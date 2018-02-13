using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections;
using System.Web.Security;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class Admin_listeclient : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        object us = Session["UserID"];
        if (Session["UserID"] == null || Session["RoleId"] == null)
            Response.Redirect("Admin.aspx");
      //  else
         //   AfficherDataTable(select("select c.login, c.password, c.mail, c.telephone, p.nom_proj from client c, projet p where c.login=p.login"));
    }
    

    /*
   
    public DataTable select(string req)
    {
        DataTable dt = new DataTable();
       SqlConnection connection = new SqlConnection();
       connection.ConnectionString = ("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\USERS\\RACHDI\\DESKTOP\\PFE\\SPNET SOLUTIONS\\APP_DATA\\DATABASE.MDF;Integrated Security=True;User Instance=True");
       connection.Open();
     /*   AppSettingsReader asr = new AppSettingsReader();
        string conn = asr.GetValue("ConnectionString", typeof(System.String)).ToString();   
            SqlConnection sc=new SqlConnection(conn);
            sc.Open();

        SqlCommand selectCommand = new SqlCommand(req,connection);
        selectCommand.ExecuteNonQuery();
   

        SqlDataAdapter adapter = new SqlDataAdapter(selectCommand); // Permet de lire les données
        DataSet data = new DataSet(); // Contiendra les données


        adapter.Fill(data, "client"); // Récupère les données
        dt = data.Tables["client"];
        return dt;
    }
    private void AfficherDataTable(DataTable dt)
    {
        Response.Write("<table border=1><tr><th>Supprimer</th><th>Login</th><th>Password</th><th>Adresse_Mail</th><th>Num_Telephone</th><th>Nom_projet</th><th>Modifier</th></tr>");


        if (dt != null)
        {
            foreach (System.Data.DataRow dr in dt.Rows)
            {
 
                Response.Write(" <tr><td><a href=supprimer_client.aspx?id=" + dr["login"].ToString() +">Supprimer</a></td><td>" + dr["login"].ToString() + "</td><td>" + dr["password"].ToString() + "</td><td>" + dr["mail"].ToString() + "</td><td>" + dr["telephone"].ToString() + "</td><td>"+dr["nom_proj"].ToString()+"</td><td><a href=Modifier_client.aspx?id="+dr["login"].ToString() + ">Modifier </a></td></tr>");

            }
        }
        Response.Write("</table>");



    }
  
    
    protected void b1_Click(object sender, EventArgs e)
    {
        AfficherDataTable(select("select c.login, c.password, c.mail, c.telephone, p.nom_proj from client c, projet p where login="+Page.Request["login"]+" and c.login=p.login"));
    }
   */
}