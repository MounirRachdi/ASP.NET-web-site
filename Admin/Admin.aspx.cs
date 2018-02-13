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

public partial class Admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
         object us = Session["UserID"];
         if (Session["UserID"] != null || Session["RoleId"] != null)
             Response.Redirect("Default.aspx?nom="+Session["UserID"]);
        
    }
   
    protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
    {
        int i = 0;
        DataTable dt = new DataTable();
        try
        {
            SqlConnection connection = Connexion.GetConnection();
                // connection.ConnectionString = ("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\USERS\\RACHDI\\DESKTOP\\PFE\\SPNET SOLUTIONS\\APP_DATA\\DATABASE.MDF;Integrated Security=True;User Instance=True");
                  //connection.ConnectionString="Data Source=.\\SQLEXPRESS;AttachDbFilename=(@c:/, *DATABASE.MDF;Integrated Security=True;User Instance=True";
                  connection.Open();
           
            /*      
            AppSettingsReader asr = new AppSettingsReader();
            string conn = asr.GetValue("ConnectionString", typeof(System.String)).ToString();
            SqlConnection sc = new SqlConnection(conn);
          //  string chemin = Server.MapPath("DATABASE.MDF");
           /* SqlConnection connection = new SqlConnection(); sc.Open();
            connection.ConnectionString = ("Data Source=.\\SQLEXPRESS;AttachDbFilename=" + chemin + ";Integrated Security=True;User Instance=True");
            connection.Open();*/
           
            SqlCommand selectCommand = new SqlCommand();
            selectCommand.Connection = connection;
                // sc;  connection;//Connexion instanciée auparavant
            selectCommand.CommandText = "select * from Admin";

            SqlDataAdapter adapter = new SqlDataAdapter(selectCommand); // Permet de lire les données
            DataSet data = new DataSet(); // Contiendra les données


            adapter.Fill(data, "Admin"); // Récupère les données
            dt = data.Tables["Admin"];



            while ((i < dt.Rows.Count) && !(dt.Rows[i]["login"].ToString().Equals(Login1.UserName)))
            {
                i++;

            }

            if (i < dt.Rows.Count)
            {
                if (!(dt.Rows[i]["password"].ToString().Equals(Login1.Password)))
                    Login1.FailureText = " mot de passse incorrecte";
                else
                {
                    Session["UserID"] = dt.Rows[i]["login"].ToString() ;
                    Session["RoleId"] = dt.Rows[i]["password"].ToString();
                    Response.Redirect("Default.aspx");
                 /*    Response.Redirect("Default.aspx?nom="+Login1.UserName);
                   HyperLink1.Visible = true;
                    HyperLink2.Visible = true;
                Login1.FailureText = string.Empty;
                Login1.Visible = false;*/
                }
            }
            else
                Login1.FailureText= " login incorrecte";
           connection.Close();
          // sc.Close();
        }
        catch (Exception ex) { Response.Write(ex.Message); }
          
    }
    protected void LinkButton1_Click1(object sender, EventArgs e)
    {
       // Panel2.Visible = true;
        Login1.Visible = false;
    //    LinkButton1.Visible = false;
    }
}