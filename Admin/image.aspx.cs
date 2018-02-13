using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Net;
using System.IO;
using System.Web.UI.HtmlControls;
using System.Web.ClientServices;


public partial class image : System.Web.UI.Page
{
     public string fileExtension
    { set; get; }
    public string fileName { set; get; }
    public byte[] data { set; get; }
    protected HtmlInputFile champ;
  // Microsoft.SqlServer.Server.MapPath(file.TemplateSourceDirectory)
   //  fileName = file.PostedFile.FileName;
    //    fileExtension = Path.GetExtension(file.PostedFile.FileName);

    public static byte[] GetPhoto(string filePath)
    {
        FileStream stream = new FileStream(
            filePath, FileMode.Open, FileAccess.Read);
        BinaryReader reader = new BinaryReader(stream);
       
        byte[] photo = reader.ReadBytes((int)stream.Length);

        reader.Close();
        stream.Close();

        return photo;
    }
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    { string path = "C:\\Users\\rachdi\\Desktop\\PFE\\Spnet Solutions\\image\\client\\"+FileUpload1.FileName;
        FileUpload1.SaveAs(path);
        fileName = FileUpload1.PostedFile.FileName;
        fileExtension = Path.GetExtension(FileUpload1.PostedFile.FileName);
       data = FileUpload1.FileBytes;
    
        SqlConnection connection = new SqlConnection();
        connection.ConnectionString = ("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\USERS\\RACHDI\\DESKTOP\\PFE\\SPNET SOLUTIONS\\APP_DATA\\DATABASE.MDF;Integrated Security=True;User Instance=True");

        connection.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "insert into image_proj(nom, type, data, id_proj) values('"+ fileName +"','" +fileExtension +"'," + data +"," +Convert.ToInt16(DropDownList1.SelectedValue) + ")";
        cmd.Connection = connection;
        cmd.ExecuteNonQuery();
        connection.Close();
        Response.Write("ajput avec succé");

        Response.AppendHeader("Refresh", "0");
    }
}