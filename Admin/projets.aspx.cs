using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

public partial class projet : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        object us = Session["UserID"];
        if (Session["UserID"] == null || Session["RoleId"] == null)
            Response.Redirect("Admin.aspx");
       
           
      //  Calendar1.Visible = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {/*
       SqlConnection connection = new SqlConnection();
        connection.ConnectionString = ("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\USERS\\RACHDI\\DESKTOP\\PFE\\SPNET SOLUTIONS\\APP_DATA\\DATABASE.MDF;Integrated Security=True;User Instance=True");
       
        connection.Open();*/
        SqlConnection connection = Connexion.GetConnection();
        /* string chemin = Server.MapPath("~/App_Data/DATABASE.MDF");
        SqlConnection connection = new SqlConnection();
        connection.ConnectionString = ("Data Source=.\\SQLEXPRESS;AttachDbFilename=" + chemin + ";Integrated Security=True;User Instance=True");
        connection.Open();*/
        SqlCommand cmd= new SqlCommand();
        cmd.CommandText = "insert into projet values('" + TextBox1.Text + "','"+TextBox2.Text +"','"+TextBox3.Text+"','"+ DropDownList1.SelectedValue + "')";
        cmd.Connection = connection;
        cmd.ExecuteNonQuery();
        connection.Close();
        Response.Write("ajput avec succé");

       // Response.AppendHeader("Refresh", "0");
        Response.Redirect("projet.aspx");
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        if(TextBox2.Text=="")
        TextBox2.Text = Calendar1.SelectedDate.ToShortDateString();
        else
            TextBox3.Text = Calendar1.SelectedDate.ToShortDateString(); 
    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {
       
    }
}