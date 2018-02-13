<%@ Page Language="C#" AutoEventWireup="true" Inherits="listeprojet" Codebehind="listeprojet.aspx.cs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:gridview id="GridView1" runat="server" autogeneratecolumns="False" 
            datasourceid="SqlDataSource1">
            <columns>
                <asp:boundfield datafield="id_projet" headertext="id_projet" 
                    insertvisible="False" readonly="True" sortexpression="id_projet" />
                <asp:boundfield datafield="nom_proj" headertext="nom_proj" 
                    sortexpression="nom_proj" />
                <asp:boundfield datafield="date_debut" headertext="date_debut" 
                    sortexpression="date_debut" />
                <asp:boundfield datafield="date_fin" headertext="date_fin" 
                    sortexpression="date_fin" />
                <asp:boundfield datafield="login" headertext="login" sortexpression="login" />
            </columns>
        </asp:gridview>
        <asp:sqldatasource id="SqlDataSource1" runat="server" 
            connectionstring="<%$ ConnectionStrings:DatabaseConnectionString %>" 
            selectcommand="SELECT * FROM [projet]"></asp:sqldatasource>
    </div>
  
    </form>
</body>
</html>
