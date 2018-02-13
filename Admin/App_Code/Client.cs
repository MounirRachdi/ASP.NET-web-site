using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
namespace client
{
    /// <summary>
    /// Description résumée de Client
    /// </summary>
    public class Client
    {
        public Client()
        {
            //
            // TODO: ajoutez ici la logique du constructeur
            //
        }
        public int id;
        public string log;
        public string password;
        public string mail;
        public Int32 tel;

        public void ajout(Client clt)
        {
            string req = "insert into client values('"+ clt.log + "','" + clt.password + "','" + clt.mail + "'," + clt.tel + ")";
            Connexion con = new Connexion();
            con.executer(req);


        }
        public void supprimer(string login_clt)
        {
            string req = "delete from client where login='" + login_clt + "'";
            Connexion con = new Connexion();
            con.executer(req);

        }
        public void modifier(Client clt)
        {
            string req = "update client set password='"+ clt.password +"', mail='"+ clt.mail +"', telephone="+ clt.tel + " where login='"+clt.log+"'";
            Connexion con = new Connexion();
            con.executer(req);

        }
    }
}