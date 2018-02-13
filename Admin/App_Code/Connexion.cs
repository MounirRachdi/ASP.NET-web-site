using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;
    /// <summary>
    /// Description résumée de Connexion
    /// </summary>
    public class Connexion
    {
        
        public Connexion()
        {
            //
            // TODO: ajoutez ici la logique du constructeur

            //
        }
       // public string ch = "Data Source=;Integrated Security=True;User Instance=True";
        string ch = Convert.ToString(System.Configuration.ConfigurationManager.ConnectionStrings["cnx"]);

        public static SqlConnection GetConnection()
        {
            string strCn = Convert.ToString(System.Configuration.ConfigurationManager.ConnectionStrings["cnx"]);
            SqlConnection Cn = new SqlConnection(strCn);

            return Cn;
        }
        public void executer(string req)
        {
            SqlConnection con = new SqlConnection(ch);
            con.Open();
            SqlCommand cmd = new SqlCommand(req, con);
            cmd.Connection = con;
         
            
                cmd.ExecuteNonQuery();
            
         
            
            con.Close();
        }
}