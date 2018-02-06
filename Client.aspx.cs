using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Client : System.Web.UI.Page
{ 
DataTable dt = new DataTable();
int i = 0;
    public void select()
    {
        try
        {

            string chemin = Server.MapPath("~/App_Data/DATABASE.MDF");
            SqlConnection connection = new SqlConnection();
            connection.ConnectionString = ("Data Source=.\\SQLEXPRESS;AttachDbFilename=" + chemin + ";Integrated Security=True;User Instance=True");
           connection.Open();
            
            SqlCommand selectCommand = new SqlCommand();
            selectCommand.Connection = connection; // Connexion instanciée auparavant
            selectCommand.CommandText = "SELECT * FROM client";

            SqlDataAdapter adapter = new SqlDataAdapter(selectCommand); // Permet de lire les données
            DataSet data = new DataSet(); // Contiendra les données


            adapter.Fill(data, "client"); // Récupère les données
            dt = data.Tables["client"];

           

            while ((i < dt.Rows.Count) && !(dt.Rows[i]["login"].ToString().Equals(Identifiant.Text)))
         
            {
                i++;

            }

            if (i < dt.Rows.Count)
            {
                if (!(dt.Rows[i]["password"].ToString().Equals(password.Text)))
                    Label1.Text = " mot de passse incorrecte";
                else
                {
                    
                   
                Session["UserID"] = dt.Rows[i]["login"].ToString();
                    Session["RoleId"] = dt.Rows[i]["password"].ToString();
                    
                 Response.Write("<script type='text/javascript'>window.open('prive.aspx','iff')</script>");
                }
            }
            else
                Label1.Text=" login incorrecte";
          
          
            connection.Close();
        }
        catch (Exception ex) { Response.Write(ex.Message);}
          
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        object us = Session["UserID"];
        if (Session["UserID"] != null || Session["RoleId"] != null)
            LinkButton1.Visible = true;
        else
            LinkButton1.Visible = false;
    }
    protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
    {

    }


    protected void b1_Click(object sender, EventArgs e)
    {
     //  string req = "select login from client";// where login= " + "'" + Identifiant.Text +"'and password='"+password.Text+"'";
       // string req2 = "select password from client where password= " + "'" + password.Text + "'";
       select();
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session["UserId"] = null;
        Session["RoleId"] = null;
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
       
       
    }
}

    
   
