using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

public partial class Admin_newuser : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       object us = Session["UserID"];
        if (Session["UserID"] == null || Session["RoleId"] == null)
            Response.Redirect("Admin.aspx");
    }
    public void insertAdmin()
    {

        SqlConnection con = new SqlConnection();
        con.ConnectionString = ("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\USERS\\RACHDI\\DESKTOP\\PFE\\SPNET SOLUTIONS\\APP_DATA\\DATABASE.MDF;Integrated Security=True;User Instance=True");
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "adminuser";
        cmd.Connection = con;
        cmd.Parameters.AddWithValue("@nom", UserName.Text);
        cmd.Parameters.AddWithValue("@mot_passe", Password.Text);
        cmd.Parameters.AddWithValue("@mail", Email.Text);
        cmd.Parameters.AddWithValue("@question", Question.Text);
        cmd.Parameters.AddWithValue("@reponse", Answer.Text);
        try
        {

            cmd.ExecuteNonQuery();

            Response.Write("Ajout avec succées");
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
        finally
        {
            con.Close();
            cmd.Dispose();

            con.Dispose();
        }
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        insertAdmin();
    }
}