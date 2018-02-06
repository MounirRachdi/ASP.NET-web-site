using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Net;
using System.Net.Mail;
using System.Net.Mime;
using System.Net.Sockets;
using System.Web.Security;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

public partial class contact : System.Web.UI.Page
{
    private TcpClient monSocket;
   // 110 est le port par défaut pour les serveurs POP3
    private NetworkStream monStream;
   //private StreamReader monStreamReader;
    public void insere()
    {
        DateTime dt = DateTime.Now;
        string chemin = Server.MapPath("~/App_Data/DATABASE.MDF");
        SqlConnection connection = new SqlConnection();
        connection.ConnectionString = ("Data Source=.\\SQLEXPRESS;AttachDbFilename=" + chemin + ";Integrated Security=True;User Instance=True");
        connection.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = connection;
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "StoredProcedure1";
        cmd.Parameters.AddWithValue("@nom", nom.Text);
        cmd.Parameters.AddWithValue("@mail", mail.Text);
        cmd.Parameters.AddWithValue("@telephone", telephone.Text);
        cmd.Parameters.AddWithValue("@message", message.Text);
        cmd.Parameters.AddWithValue("@date_mess", dt.ToShortDateString());
        try
        {
            //connection.Open();
            cmd.ExecuteNonQuery();

            // Response.AppendHeader("Refresh", "0");
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
    public Boolean verif()
    {
        if (nom.Text == "" || mail.Text == "" || telephone.Text == "" || message.Text == "")
        {
            Response.Write("<script type='text/javascript'> alert('chomps obligatoires')</script>");
            
            return false; }
        else
            return true;
    
    }
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (verif())
        {
            try
            {
                MailMessage m = new MailMessage();
                m.From = new MailAddress(mail.Text);

                m.To.Add(new MailAddress("mimo.rachdi@yahoo.fr"));
                //  m.To.Add(new MailAddress("zouaidiammar@hotmail.com"));

                m.Subject = nom.Text;
                m.Body = telephone.Text + "\n" + message.Text;

                SmtpClient client = new SmtpClient();

                client.Host = "smtp.developpez.com";

                //  client.Credentials = new NetworkCredential("pharaonix", "mon mot de passe");
                client.Send(m);
                insere();
            }
            catch (Exception ex) { Response.Write(ex.Message); }
        }
        
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        monSocket = new TcpClient("pop.developpez.com", 110); // 110 est le port par défaut pour les serveurs POP3
        // initialisation du Stream
monStream = monSocket.GetStream();
     


    }
  
    protected void nom_TextChanged(object sender, EventArgs e)
    {
        if (this.nom.Text == "")
            nom.Text = "inserer votre nom";
    }
    protected void mail_TextChanged(object sender, EventArgs e)
    {

    }
}
