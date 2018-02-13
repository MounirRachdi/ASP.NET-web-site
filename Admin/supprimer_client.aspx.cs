using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

public partial class supprimer_client : System.Web.UI.Page
{
    client.Client clt=new client.Client();
    
  

    protected void Page_Load(object sender, EventArgs e)
    {
        clt.log=(Page.Request["id"]);
        clt.supprimer(clt.log);
        Response.Write("client supprimer!");

        Response.Redirect("listeclient.aspx");
       
    }
}