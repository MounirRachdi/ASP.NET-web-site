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

public partial class supprimer_candidat : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

       SqlConnection connection = new SqlConnection();
        connection.ConnectionString = ("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\USERS\\RACHDI\\DESKTOP\\PFE\\SPNET SOLUTIONS\\APP_DATA\\DATABASE.MDF;Integrated Security=True;User Instance=True");
        connection.Open();
     /*    AppSettingsReader asr = new AppSettingsReader();
        string conn = asr.GetValue("ConnectionString", typeof(System.String)).ToString();
        SqlConnection sc = new SqlConnection(conn);
        sc.Open();*/
     
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "delete from condidats where idcondidat=" + Page.Request["id"] + "";
        cmd.Connection = connection;
        cmd.ExecuteNonQuery();
        connection.Close();
        Response.Redirect("listecondidat.aspx");
    }

}