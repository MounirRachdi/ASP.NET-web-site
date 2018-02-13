using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

public partial class setting : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ChangePassword1_ChangedPassword(object sender, EventArgs e)
    {
       
    }
    public void modifier()
    { 
     SqlConnection connection = new SqlConnection();
        connection.ConnectionString = ("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\USERS\\RACHDI\\DESKTOP\\PFE\\SPNET SOLUTIONS\\APP_DATA\\DATABASE.MDF;Integrated Security=True;User Instance=True");
        connection.Open();
        string req = "update Admin set mot_passe='" + ChangePassword1.ConfirmNewPassword + "' where nom=Mounir Rachdi";
        SqlCommand cmd = new SqlCommand(req, connection);
        cmd.ExecuteNonQuery();
        Response.Redirect("listeadmin.aspx");
    
    }
    protected void ChangePasswordPushButton_Click(object sender, EventArgs e)
    {
       
    }
}