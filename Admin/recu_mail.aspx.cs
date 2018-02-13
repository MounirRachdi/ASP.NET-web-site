using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Sockets;
using System.Net.Mail;
using System.Net.Mime;
using System.IO;
public partial class recu_mail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
 /*   private TcpClient monSocket;
    private NetworkStream monStream;//monSocket = new TcpClient("pop.developpez.com", 110);
//   monStream = monSocket.GetStream();
// création du streamreader
private StreamReader monStreamReader;
//monStreamReader = new StreamReader(monStream);

private void EnvoiCommande(String _Login)
{
    // Préparation de la commande USER avec le nom d'utilisateur
    String Commande = "user " + _Login + "\r\n";
    // Envoi de la commande au serveur
    Byte[] bCommande = System.Text.ASCIIEncoding.ASCII.GetBytes(Commande);
    monStream.Write(bCommande, 0, bCommande.Length);

}
 //Récupère le nombre de mails sur le serveur, en parsant la réponse du serveur du type "+OK Nbre Taille"

private int NombreDeMessages(int mode, params int[] index)
{
String sOutStream = "";
if (mode == 1)
sOutStream = "stat\r\n";
else if (mode == 2)
sOutStream = "list " + index[0].ToString() + "\r\n";
String[] tempS ={ "0" };
try
{
EnvoiCommande(sOutStream);
String tempLog = sr.ReadLine();
tempS = tempLog.Split(' ');
}
catch (Exception e) {
Response.Write("erreur" + e);
}
return int.Parse(tempS[1]);
}
#region Méthode : RecupereListeMessages
private void RecupereListeMessages()
{
    for (int i = 1; i <= inbMsg; i++)
    {
        TextBox1.Text = "Retrieve Message " + i.ToString() + " ...";
        int intSizeMsg = NombreDeMessages(2, i);
        EnvoiCommande("retr " + i.ToString() + "\r\n");
        parseMail(intSizeMsg);
    }
}
#endregion
#region Méthode : ParseMail
/// <summary>
/// Rempli la listview listant la liste détaillée des mails
/// </summary>
/// <param name="size"></param>
private void parseMail(int size)
{
    string szTemp = sr.ReadLine();
    string szSubject = "";
    string szDate = "";
    int temp;
    if (szTemp != "-")
    {
        szTemp = sr.ReadLine();
        string szSender;
        if ((temp = szTemp.IndexOf("<")) != -1)
            szSender = szTemp.Substring(temp);
        else
            szSender = "Inconnu||Erreur";
        System.Windows.Forms.ListViewItem curItem = lvMails.Items.Add("");
        szTemp = sr.ReadLine();
        while (szTemp != ".")
        {
            if (szTemp.IndexOf("Date:") != -1)
                szDate = szTemp.Substring(5, szTemp.Length - 5);
            if (szTemp.IndexOf("Subject:") != -1)
                szSubject = szTemp.Substring(8, szTemp.Length - 8);
            szTemp = sr.ReadLine();
        }
        curItem.SubItems.Add(szSender.Replace("<", "").Replace(">", ""));
        curItem.SubItems.Add(szSubject);
        curItem.SubItems.Add(Convert.ToDateTime(szDate).ToShortDateString());
        curItem.SubItems.Add(Convert.ToDateTime(szDate).ToShortTimeString());
    }
}
#endregion
#region Méthode : RecupereMail
/// <summary>
/// Récupère le "source" de l'email sélectionné
/// </summary>
/// <param name="NumMail"></param>
private void RecupereMail(int NumMail)
{
    EnvoiCommande("retr " + NumMail.ToString() + "\r\n");
    string szTemp = sr.ReadLine();
    while (szTemp != ".")// fin du mail
    {
        if (szTemp.Length != 0)// on ne travail par sur les lignes vides (sauts de ligne)
        {
            // on ajoute la ligne dans la textbox d'affichage du mail.
            // Si le dernier caractère est le symbole "=" alors cela représente un saut de ligne que l'on doit rajouter.
            if (szTemp[szTemp.Length - 1].Equals('='))
                txtDetails.AppendText(szTemp.Substring(0, szTemp.Length - 1));
            else txtDetails.AppendText(szTemp + "\r\n");
        }
        szTemp = sr.ReadLine(); // lit la ligne suivante
    }
}*/
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
}