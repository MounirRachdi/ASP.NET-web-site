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

public partial class Ajout_clt : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        object us = Session["UserID"];
        if (Session["UserID"] == null || Session["RoleId"] == null)
            Response.Redirect("Admin.aspx");
    }
    protected void ajouter_Click(object sender, EventArgs e)
    {
        if (login.Text == "")

            login.Text = "champ obligatoire";
        else
        {
            client.Client cl = new client.Client();
            cl.log = login.Text;
            cl.password = password0.Text;
            cl.mail = mail.Text;
            cl.tel = Convert.ToInt32(telephone.Text);
            SqlConnection con = Connexion.GetConnection();
           
            con.Open();
            /* AppSettingsReader asr = new AppSettingsReader();
           string conn = asr.GetValue("ConnectionString", typeof(System.String)).ToString();
           SqlConnection sc = new SqlConnection(conn);
           sc.Open();*/
            string req = "select login from client where login='" + cl.log + "'";
            SqlCommand cd = new SqlCommand(req, con);
            SqlDataReader dr = cd.ExecuteReader();
            if (dr.HasRows)
            {
                Response.Write("client existe déja");
                dr.Close();
            }
            else //  Session["connection"] = connection;
            {
                dr.Close();
                cl.ajout(cl);
                Response.Write("Ajout avec succée");
                //  Response.AppendHeader("Refresh", "0");
                Response.Redirect("listeclient.aspx");
            }
        }
    }
}