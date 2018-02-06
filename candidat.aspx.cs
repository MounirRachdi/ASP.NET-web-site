using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.CodeDom;
using System.IO;
using System.Web.UI.HtmlControls;
using System.Configuration;
using System.Drawing;
using System.Web.SessionState;
using System.Web.ClientServices;

public partial class condidat : System.Web.UI.Page
{

    public string fileName { set; get; }
    protected HtmlInputFile champ;
    public string fileExtension
    { set; get; }
    public byte[] data { set; get; }

    public bool verif()
    {
        if (civilite.SelectedValue == "" || nom.Text == "" || prenom.Text == "" || (jour.SelectedValue == "" && mois.SelectedValue == "" && annee.SelectedValue == "") || adresse.Text == "" || code_postal.Text == "" || ville.Text == "" || pays.Text == "" || telephone.Text == "" || email.Text == "")
        {
            Response.Write("<script language='javascript' > alert('SVP remplire touts les champs')</script>");
            return false;
        }
        else
            return true;
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        //string nom =champ.PostedFile.FileName;
    }

    
       
    protected void Button1_Click(object sender, EventArgs e)
    {
        fileName = file.PostedFile.FileName;
        fileExtension = Path.GetExtension(file.PostedFile.FileName);
        data = file.FileBytes;
        //  cv=GetFichier(Server.MapPath(file.TemplateSourceDirectory));
        if (verif())
        {
           // Connexion con = new Connexion();
            string chemin = Server.MapPath("~/App_Data/DATABASE.MDF");
            SqlConnection connection = new SqlConnection();
            connection.ConnectionString = ("Data Source=.\\SQLEXPRESS;AttachDbFilename="+chemin+";Integrated Security=True;User Instance=True");
             connection.Open();
            /*    
          string req = "insert into condidats values('" + civilite.SelectedValue + "','" + nom.Text + "','" + prenom.Text + "','" + jour.SelectedValue + "/" + mois.SelectedValue + "/" + annee.SelectedValue + "','" + adresse.Text + "','" + code_postal.Text + "','" + ville.Text + "','" + pays.SelectedValue + "','" + telephone.Text + "','" + email.Text + "'," + data + ",'" + fileName + "','" + fileExtension + "')";
          SqlCommand cmd = new SqlCommand(req,connection);
          cmd.Connection = connection;
          cmd.ExecuteNonQuery();
            */
               SqlCommand cmd = new SqlCommand();
             cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "StoredProcedure2";
            cmd.Connection = connection;
            cmd.Parameters.AddWithValue("@civilite", civilite.SelectedValue);
            cmd.Parameters.AddWithValue("@nom", nom.Text);
            cmd.Parameters.AddWithValue("@prenom", prenom.Text);
            cmd.Parameters.AddWithValue("@date_nais", jour.SelectedValue +"/"+ mois.SelectedValue +"/"+ annee.SelectedValue);
            cmd.Parameters.AddWithValue("@adresse", adresse.Text);
            cmd.Parameters.AddWithValue("@code_postal", code_postal.Text);
            cmd.Parameters.AddWithValue("@ville", ville.Text);
            cmd.Parameters.AddWithValue("@pays", pays.SelectedValue);
            cmd.Parameters.AddWithValue("@telephone", telephone.Text);
            cmd.Parameters.AddWithValue("@mail", email.Text);
            cmd.Parameters.AddWithValue("@Data", data);
            cmd.Parameters.AddWithValue("@FileName", fileName);
            cmd.Parameters.AddWithValue("@FileExtension", fileExtension);
           
            try
            {
                //connection.Open();
                cmd.ExecuteNonQuery();

                Response.AppendHeader("Refresh", "0");
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
            finally
            {
               // connection.Close();
                cmd.Dispose();
           
             //  connection.Dispose();
            }
        }
    }

    
    
       
}
