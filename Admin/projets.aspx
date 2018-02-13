<%@ Page Language="C#" AutoEventWireup="true" Inherits="projet" Codebehind="projets.aspx.cs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
   .calendar
    {
    	position:absolute;
    	
    	}
    
        #form1
        {
            height: 489px;
        }
    
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <table style="height: 260px; width: 644px"><tr><td>
<table>
<tr><td>Nom_projet:</td><td>
    <asp:textbox id="TextBox1" runat="server"></asp:textbox></td></tr>
    <tr><td>Date_debut</td><td>
        <asp:textbox id="TextBox2" runat="server" ontextchanged="TextBox2_TextChanged"></asp:textbox>
        </td></tr><tr><td>Date_fin</td><td>
            <asp:textbox id="TextBox3" runat="server"></asp:textbox></td></tr>
    <tr><td>Client</td><td>
        <asp:dropdownlist id="DropDownList1" runat="server" 
            datasourceid="SqlDataSource1" datatextfield="login" datavaluefield="login">
        </asp:dropdownlist>
        <asp:sqldatasource id="SqlDataSource1" runat="server" 
            connectionstring="<%$ ConnectionStrings:DatabaseConnectionString %>" 
            selectcommand="SELECT [login] FROM [client]"></asp:sqldatasource>
    </td></tr>
    <tr><td></td><td>
        <asp:button id="Button1" runat="server" text="Ajouter" 
            onclick="Button1_Click" /></td></tr>
</table></td><td>
    <asp:calendar id="Calendar1" runat="server" backcolor="White" 
        bordercolor="#3366CC" borderwidth="1px" cellpadding="1" 
        daynameformat="Shortest" font-names="Verdana" font-size="8pt" 
        forecolor="#003399" height="200px" width="220px" 
        onselectionchanged="Calendar1_SelectionChanged">
        <dayheaderstyle backcolor="#99CCCC" forecolor="#336666" height="1px" />
        <nextprevstyle font-size="8pt" forecolor="#CCCCFF" />
        <othermonthdaystyle forecolor="#999999" />
        <selecteddaystyle backcolor="#009999" font-bold="True" forecolor="#CCFF99" />
        <selectorstyle backcolor="#99CCCC" forecolor="#336666" />
        <titlestyle backcolor="#003399" bordercolor="#3366CC" borderwidth="1px" 
            font-bold="True" font-size="10pt" forecolor="#CCCCFF" height="25px" />
        <todaydaystyle backcolor="#99CCCC" forecolor="White" />
        <weekenddaystyle backcolor="#CCCCFF" />
    
    </asp:calendar></td></tr>
    </table>
    </form>


    </body>
</html>
