using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

public partial class telecharger : System.Web.UI.Page
{
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


        adapter.Fill(data, "condidats"); // Récupère les données
        dt = data.Tables["condidats"];
        return dt;
    }
    private void download(DataTable dt)
    {
        Byte[] bytes = (Byte[])dt.Rows[0]["Data"];
        Response.Buffer = true;
        Response.Charset = "";
        Response.Cache.SetCacheability(HttpCacheability.NoCache);
        Response.ContentType = dt.Rows[0]["FileExtension"].ToString();
        Response.AddHeader("content-disposition", "attachment;filename=" + dt.Rows[0]["Filename"].ToString());
        Response.BinaryWrite(bytes);
        Response.Flush();
        Response.End();
    }
/*    protected void Button1_Click(object sender, EventArgs e)
    {
        DataTable tr = new DataTable();

        string req = "select Data, Filename, FileExtension from condidats where idcondidat=" + Page.Request["id"]+"";
        tr = select(req);
        if (tr != null)
        {
            download(tr);
        }

    }*/
    protected void Page_Load(object sender, EventArgs e)
    {
     string c= Page.Request["id"];
       DataTable tr ;

       string req = "select Data, Filename, FileExtension from condidats where idcondidat=" +c+ "";
       tr = select(req);
       if (tr != null)
       {
           download(tr);
       }
    }
}