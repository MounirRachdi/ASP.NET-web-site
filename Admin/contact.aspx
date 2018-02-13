<%@ Page Language="C#" AutoEventWireup="true" Inherits="contact" Codebehind="contact.aspx.cs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:gridview id="GridView1" runat="server" autogeneratecolumns="False" 
            datasourceid="SqlDataSource1" 
            onselectedindexchanged="GridView1_SelectedIndexChanged1">
            <columns>
                <asp:boundfield datafield="id" headertext="id" insertvisible="False" 
                    readonly="True" sortexpression="id" />
                <asp:boundfield datafield="nom" headertext="nom" sortexpression="nom" />
                <asp:boundfield datafield="mail" headertext="mail" sortexpression="mail" />
                <asp:boundfield datafield="telephone" headertext="telephone" 
                    sortexpression="telephone" />
                <asp:boundfield datafield="message" headertext="message" 
                    sortexpression="message" />
                <asp:commandfield showselectbutton="True" />
            </columns>
        </asp:gridview>
    </div>
    <asp:sqldatasource id="SqlDataSource1" runat="server" 
        connectionstring="<%$ ConnectionStrings:DatabaseConnectionString %>" 
        selectcommand="SELECT * FROM [contact]" 
        onselecting="SqlDataSource1_Selecting"></asp:sqldatasource>
    <asp:textbox id="TextBox1" runat="server" textmode="MultiLine" height="274px" 
        width="610px"></asp:textbox>
    </form>
</body>
</html>
