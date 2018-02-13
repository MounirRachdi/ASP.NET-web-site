using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

public partial class listecondidat : System.Web.UI.Page
{
    
  public string idcond;
    protected void Page_Load(object sender, EventArgs e)
  {
      object us = Session["UserID"];
      if (Session["UserID"] == null || Session["RoleId"] == null)
          Response.Redirect("Admin.aspx");
      else
          AfficherDataTable(select("SELECT id, civilite, nom, prenom, adresse, ville, pays, telephone, mail, Filename FROM candidat"));

    }
    public DataTable select(string req)
    {
        DataTable dt = new DataTable();
        SqlConnection connection = Connexion.GetConnection();       
        connection.Open();

       SqlCommand selectCommand = new SqlCommand();

        selectCommand.Connection = connection;

        selectCommand.CommandText = req;

      SqlDataAdapter adapter = new SqlDataAdapter(selectCommand); // Permet de lire les données
        DataSet data = new DataSet(); // Contiendra les données


        adapter.Fill(data, "candidat"); // Récupère les données
        dt = data.Tables["candidat"];
        return dt;
    }
    private void AfficherDataTable(DataTable dt)
    {
        Response.Write("<table border=1><tr><th>id_candidat</th><th>Civilité</th><th>Nom_candidat</th><th>Prenom_candidat</th><th>adresse</th><th> ville</th><th> pays</th><th> telephone</th><th> mail</th><th> cv</th></tr>");


        if (dt != null)
        {
            foreach (System.Data.DataRow dr in dt.Rows)
            {

                Response.Write(" <tr><td>" /*+ dr["i"].ToString() */+ ":<a href=supprimer_candidat.aspx?id=" + dr["id"].ToString() + ">supprimer</a></td><td>" + dr["civilite"].ToString() + "</td><td>" + dr["nom"].ToString() + "</td><td>" + dr["prenom"].ToString() + "</td><td>" + dr["adresse"].ToString() + "</td><td>" + dr["ville"].ToString() + "<td>" + dr["pays"].ToString() + "</td><td>" + dr["telephone"].ToString() + "</td><td>" + dr["mail"].ToString() + "</td><td>" + dr["Filename"].ToString() + "<a href=telecharger.aspx?id=" + dr["id"].ToString() + ">Telecharger cv</a></td></tr>");

            }
        }
        Response.Write("</table>");



    }
  
}