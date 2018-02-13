<%@ Page Language="C#" AutoEventWireup="true" Inherits="Ajout_clt" Codebehind="Ajout_clt.aspx.cs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server"><div>
     <table>
 
    
    <tr><td class="style2">
        <asp:label id="Label1" runat="server" text="Login client"></asp:label></td>
        <td class="style2">
            <asp:textbox id="login" runat="server"></asp:textbox>
        </td><td class="style2"></td></tr>
        <tr><td> <asp:label id="Label2" runat="server" text="Mot de passe"></asp:label> </td><td>  
            <asp:textbox id="password0" runat="server" textmode="Password"></asp:textbox></td><td></td></tr>
        <tr><td><asp:label id="Label3" runat="server" text="Adresse mail"></asp:label></td><td>  <asp:textbox id="mail" runat="server"></asp:textbox></td><td></td></tr>
    <tr><td><asp:label id="Label4" runat="server" text="Num_tel"></asp:label></td><td> <asp:textbox id="telephone" runat="server"></asp:textbox></td><td></td></tr>
    <tr><td class="style1" colspan="2">
        <asp:button id="ajouter" runat="server" text="Ajouter_Client" 
            onclick="ajouter_Click" height="26px" width="137px" /></td><td align="center" class="style1">
            &nbsp;</td></tr>
    </table>
    </div>
    </form>
</body>
</html>
