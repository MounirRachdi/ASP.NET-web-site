<%@ Page Language="C#" AutoEventWireup="true" Inherits="prive" Codebehind="prive.aspx.cs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script runat="server">
   
        </script>
        <style type="text/css">
        div
        {
        	moz-border-radius: 50px;
    border-radius: 20px 20px 20px 20px;
        	}
        
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="border-style: solid; border-color: #999966; width: 709px;"><center>
  <strong style="color: #003399">Espace Privé</strong><br />
    <%  Response.Write("Bienvenue " + Page.Request.Form["Identifiant"] + "Votre application est en cour de construction"); %><br />
    
    <img alt="" src="image/construction.jpg"  />
    
    </center>
    </div>
    </form>
</body>
</html>
