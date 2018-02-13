<%@ Page Language="C#" AutoEventWireup="true" Inherits="Admin_listeclient" Codebehind="listeclient.aspx.cs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="width: 570px; height: 604px;">
    <form id="form1" runat="server">
    <div>
    
        <asp:gridview id="GridView1" runat="server" autogeneratecolumns="False" 
            cellpadding="4" datakeynames="id_client" datasourceid="SqlDataSource1" 
            forecolor="#333333" gridlines="None">
            <alternatingrowstyle backcolor="White" />
            <columns>
                <asp:boundfield datafield="id_client" headertext="id_client" readonly="True" 
                    sortexpression="id_client" InsertVisible="False" />
                <asp:BoundField DataField="nom" HeaderText="nom" SortExpression="nom" />
                <asp:BoundField DataField="prenom" HeaderText="prenom" SortExpression="prenom" />
                <asp:BoundField DataField="login" HeaderText="login" SortExpression="login" />
                <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                <asp:BoundField DataField="mail" HeaderText="mail" SortExpression="mail" />
            </columns>
            <editrowstyle backcolor="#2461BF" />
            <footerstyle backcolor="#507CD1" font-bold="True" forecolor="White" />
            <headerstyle backcolor="#507CD1" font-bold="True" forecolor="White" />
            <pagerstyle backcolor="#2461BF" forecolor="White" horizontalalign="Center" />
            <rowstyle backcolor="#EFF3FB" />
            <selectedrowstyle backcolor="#D1DDF1" font-bold="True" forecolor="#333333" />
            <sortedascendingcellstyle backcolor="#F5F7FB" />
            <sortedascendingheaderstyle backcolor="#6D95E1" />
            <sorteddescendingcellstyle backcolor="#E9EBEF" />
            <sorteddescendingheaderstyle backcolor="#4870BE" />
        </asp:gridview>
        <asp:sqldatasource id="SqlDataSource1" runat="server" 
            connectionstring="<%$ ConnectionStrings:cnx %>" 
            selectcommand="SELECT * FROM [client]">
        </asp:sqldatasource>
    
    </div>
    
    </form>
</body>
</html>
