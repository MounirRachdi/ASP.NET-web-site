using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Data.Sql;

public partial class Admin_Modifier_client : System.Web.UI.Page
{//string c = Page.Request["id"];
     client.Client clt = new client.Client();
    
        
    protected void Page_Load(object sender, EventArgs e)
     {
         
        affiche(select("select * from client where login='"+Page.Request["id"]+ "'"));
      
    }
    public DataTable select(string req)
    {
        DataTable dt = new DataTable();
        SqlConnection connection = new SqlConnection();
        connection.ConnectionString = ("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\USERS\\RACHDI\\DESKTOP\\PFE\\SPNET SOLUTIONS\\APP_DATA\\DATABASE.MDF;Integrated Security=True;User Instance=True");
        connection.Open();

        SqlCommand selectCommand = new SqlCommand();

        selectCommand.Connection = connection;

        selectCommand.CommandText = req;

        SqlDataAdapter adapter = new SqlDataAdapter(selectCommand); // Permet de lire les données
        DataSet data = new DataSet(); // Contiendra les données


        adapter.Fill(data, "client"); // Récupère les données
        dt = data.Tables["client"];
        return dt;
    }
    protected void Supprimer_Click(object sender, EventArgs e)
    {
        client.Client clt = new client.Client();

        clt.supprimer(login.Text);
        //  charger_grid();
    }
    private void affiche(DataTable dt)
    {
        if (dt != null)
        {
            foreach (DataRow dr in dt.Rows)
            {
                login.Text = dr["login"].ToString();
                password0.Text = dr["password"].ToString();
                mail.Text = dr["mail"].ToString();
                telephone.Text = dr["telephone"].ToString();

            }

        }

    } 
    
        
    public void modifier()
    {
        
    
    }
   
       
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection connection = new SqlConnection();
        connection.ConnectionString = ("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\USERS\\RACHDI\\DESKTOP\\PFE\\SPNET SOLUTIONS\\APP_DATA\\DATABASE.MDF;Integrated Security=True;User Instance=True");
        connection.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = connection;
        cmd.CommandText="update client set password='"+password0.Text+"', mail='"+mail.Text+"', telephone="+telephone.Text+" where login='"+login.Text+"'";
        cmd.ExecuteNonQuery();
        /*client.Client cl = new client.Client();
        cl.log = login.Text;
        cl.password = password0.Text;
        cl.mail = mail.Text;
        cl.tel = Convert.ToInt32(telephone.Text);
        cl.modifier(clt);*/
       
        Response.Redirect("listeclient.aspx");
        
    }
}