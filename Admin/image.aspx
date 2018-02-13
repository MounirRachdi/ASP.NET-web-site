<%@ Page Language="C#" AutoEventWireup="false" Inherits="image_default" Codebehind="image.aspx.cs" debug="false"   %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table>
   
    <tr><td>Image</td><td>
        <asp:fileupload id="FileUpload1" runat="server" />
        </td></tr>
     <tr><td>id_projet</td><td>
         <asp:dropdownlist id="DropDownList1" runat="server" 
             datasourceid="SqlDataSource1" datatextfield="id_projet" 
             datavaluefield="id_projet">
         </asp:dropdownlist>
         <asp:sqldatasource id="SqlDataSource1" runat="server" 
             connectionstring="<%$ ConnectionStrings:DatabaseConnectionString %>" 
             selectcommand="SELECT [id_projet] FROM [projet]"></asp:sqldatasource>
        </td></tr>
        <tr><td></td><td>
            <asp:button id="Button1" runat="server" text="Ajouter" 
                onclick="Button1_Click" /></td></tr>
    </table>
    </div>
    </form>
</body>
</html>
