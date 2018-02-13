using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

public partial class listeadmin : System.Web.UI.Page
{
    public DataTable select(string req)
    {
        DataTable dt = new DataTable();
        SqlConnection connection = Connexion.GetConnection();
      //  connection.ConnectionString = ("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\USERS\\RACHDI\\DESKTOP\\PFE\\SPNET SOLUTIONS\\APP_DATA\\DATABASE.MDF;Integrated Security=True;User Instance=True");
        connection.Open();

        SqlCommand selectCommand = new SqlCommand();

        selectCommand.Connection = connection;

        selectCommand.CommandText = req;

        SqlDataAdapter adapter = new SqlDataAdapter(selectCommand); // Permet de lire les données
        DataSet data = new DataSet(); // Contiendra les données


        adapter.Fill(data, "Admin"); // Récupère les données
        dt = data.Tables["Admin"];
        return dt;
    }
    private void AfficherDataTable(DataTable dt)
    {
        Response.Write("<table border=1><tr><th>nom</th><th>Adresse_Mail</th></tr>");


        if (dt != null)
        {
            foreach (System.Data.DataRow dr in dt.Rows)
            {

                Response.Write(" <tr><td>" + dr["login"].ToString() + "</td><td>" + dr["mail"].ToString() + "</td></tr>");

            }
        }
        Response.Write("</table>");



    }
  
    protected void Page_Load(object sender, EventArgs e)
    {
        object us = Session["UserID"];
        if (Session["UserID"] == null || Session["RoleId"] == null)
            Response.Redirect("Admin.aspx");
        else
        AfficherDataTable(select("select * from Admin"));
    }
}