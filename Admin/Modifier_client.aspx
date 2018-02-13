<%@ Page Language="C#" AutoEventWireup="true" Inherits="Admin_Modifier_client" Codebehind="Modifier_client.aspx.cs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table>
    
    
    <tr><td class="style2">
        <asp:label id="Label1" runat="server" text="Login client" ></asp:label></td>
        <td class="style2">
            <asp:textbox id="login" runat="server" readonly="true"></asp:textbox>
        </td><td class="style2"></td></tr>
        <tr><td> <asp:label id="Label2" runat="server" text="Mot de passe"></asp:label> </td><td>  
            <asp:textbox id="password0" runat="server"></asp:textbox></td><td></td></tr>
        <tr><td><asp:label id="Label3" runat="server" text="Adresse mail"></asp:label></td><td>  <asp:textbox id="mail" runat="server"></asp:textbox></td><td></td></tr>
    <tr><td><asp:label id="Label4" runat="server" text="Num_tel"></asp:label></td><td> <asp:textbox id="telephone" runat="server"></asp:textbox></td><td></td></tr>
    <tr><td class="style1">
        &nbsp;</td><td align="center" class="style1">
            <asp:button id="Modifier" runat="server" text="Modifier" 
                onclick="Button1_Click" height="25px" width="97px" />
        </td><td class="style1">
            &nbsp;</td></tr>
    </table>
    </div>
    </form>
</body>
</html>
