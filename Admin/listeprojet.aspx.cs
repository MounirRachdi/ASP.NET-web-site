using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class listeprojet : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        object us = Session["UserID"];
        if (Session["UserID"] == null || Session["RoleId"] == null)
            Response.Redirect("Admin.aspx");
       
    }
}