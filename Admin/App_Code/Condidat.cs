using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.IO;
using System.Drawing.Imaging;
using System.Drawing; 

/// <summary>
/// Description résumée de Condidat
/// </summary>
public class Condidat
{
	public Condidat()
	{
		//
		// TODO: ajoutez ici la logique du constructeur
		//
	}
    protected void Retreive_Pdf(object sender, EventArgs e)
    {
        string strQuery = "select Name, ContentType, Data from tblFiles where id=@id";
        SqlCommand cmd = new SqlCommand(strQuery);
        cmd.Parameters.Add("@id", SqlDbType.Int).Value = 4;
        DataTable dt = GetData(cmd);
        if (dt != null)
        {
           // download(dt);
        }
    }
    private DataTable GetData(SqlCommand cmd)
    {
        DataTable dt = new DataTable();
        String strConnString = System.Configuration.ConfigurationManager.ConnectionStrings["conString"].ConnectionString;
        SqlConnection con = new SqlConnection(strConnString);
        SqlDataAdapter sda = new SqlDataAdapter();
        cmd.CommandType = CommandType.Text;
        cmd.Connection = con;
        try
        {
            con.Open();
            sda.SelectCommand = cmd;
            sda.Fill(dt);
            return dt;
        }
        catch
        {
            return null;
        }
        finally
        {
            con.Close();
            sda.Dispose();
            con.Dispose();
        }
    }
  /*  private void download(DataTable dt)
    {
        Byte[] bytes = (Byte[])dt.Rows[0]["Data"];
        Response.Buffer = true;
        Response.Charset = "";
        Response.Cache.SetCacheability(HttpCacheability.NoCache);
        Response.ContentType = dt.Rows[0]["ContentType"].ToString();
        Response.AddHeader("content-disposition", "attachment;filename="
        + dt.Rows[0]["Name"].ToString());
        Response.BinaryWrite(bytes);
        Response.Flush();
        Response.End();
    }*/
}