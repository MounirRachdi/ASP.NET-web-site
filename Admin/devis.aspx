<%@ Page Language="C#" AutoEventWireup="true" Inherits="devis" Codebehind="devis.aspx.cs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:gridview id="GridView1" runat="server" autogeneratecolumns="False" 
            datakeynames="id" datasourceid="SqlDataSource1">
            <columns>
                <asp:templatefield headertext="id" insertvisible="False" sortexpression="id">
                    <edititemtemplate>
                        <asp:label id="Label1" runat="server" text='<%# Eval("id") %>'></asp:label>
                    </edititemtemplate>
                    <itemtemplate>
                        <asp:label id="Label1" runat="server" text='<%# Bind("id") %>'></asp:label>
                    </itemtemplate>
                </asp:templatefield>
                <asp:templatefield headertext="nom" sortexpression="nom">
                    <edititemtemplate>
                        <asp:textbox id="TextBox1" runat="server" text='<%# Bind("nom") %>'></asp:textbox>
                    </edititemtemplate>
                    <itemtemplate>
                        <asp:label id="Label2" runat="server" text='<%# Bind("nom") %>'></asp:label>
                    </itemtemplate>
                </asp:templatefield>
                <asp:templatefield headertext="entreprise" sortexpression="entreprise">
                    <edititemtemplate>
                        <asp:textbox id="TextBox2" runat="server" text='<%# Bind("entreprise") %>'></asp:textbox>
                    </edititemtemplate>
                    <itemtemplate>
                        <asp:label id="Label3" runat="server" text='<%# Bind("entreprise") %>'></asp:label>
                    </itemtemplate>
                </asp:templatefield>
                <asp:templatefield headertext="siteweb" sortexpression="siteweb">
                    <edititemtemplate>
                        <asp:textbox id="TextBox3" runat="server" text='<%# Bind("siteweb") %>'></asp:textbox>
                    </edititemtemplate>
                    <itemtemplate>
                        <asp:label id="Label4" runat="server" text='<%# Bind("siteweb") %>'></asp:label>
                    </itemtemplate>
                </asp:templatefield>
                <asp:templatefield headertext="mail" sortexpression="mail">
                    <edititemtemplate>
                        <asp:textbox id="TextBox4" runat="server" text='<%# Bind("mail") %>'></asp:textbox>
                    </edititemtemplate>
                    <itemtemplate>
                        <asp:label id="Label5" runat="server" text='<%# Bind("mail") %>'></asp:label>
                    </itemtemplate>
                </asp:templatefield>
                <asp:templatefield headertext="telephone" sortexpression="telephone">
                    <edititemtemplate>
                        <asp:textbox id="TextBox5" runat="server" text='<%# Bind("telephone") %>'></asp:textbox>
                    </edititemtemplate>
                    <itemtemplate>
                        <asp:label id="Label6" runat="server" text='<%# Bind("telephone") %>'></asp:label>
                    </itemtemplate>
                </asp:templatefield>
                <asp:templatefield headertext="pays" sortexpression="pays">
                    <edititemtemplate>
                        <asp:textbox id="TextBox6" runat="server" text='<%# Bind("pays") %>'></asp:textbox>
                    </edititemtemplate>
                    <itemtemplate>
                        <asp:label id="Label7" runat="server" text='<%# Bind("pays") %>'></asp:label>
                    </itemtemplate>
                </asp:templatefield>
                <asp:templatefield headertext="interet" sortexpression="interet">
                    <edititemtemplate>
                        <asp:textbox id="TextBox7" runat="server" text='<%# Bind("interet") %>'></asp:textbox>
                    </edititemtemplate>
                    <itemtemplate>
                        <asp:label id="Label8" runat="server" text='<%# Bind("interet") %>'></asp:label>
                    </itemtemplate>
                </asp:templatefield>
                <asp:templatefield headertext="budget" sortexpression="budget">
                    <edititemtemplate>
                        <asp:textbox id="TextBox8" runat="server" text='<%# Bind("budget") %>'></asp:textbox>
                    </edititemtemplate>
                    <itemtemplate>
                       <asp:label id="Label9" runat="server" text='<%# Bind("budget") %>'></asp:label>
                    </itemtemplate>
                </asp:templatefield>
                <asp:templatefield headertext="message" sortexpression="message">
                    <edititemtemplate>
                        <asp:textbox id="TextBox9" runat="server" text='<%# Bind("message") %>'></asp:textbox>
                    </edititemtemplate>
                    <itemtemplate>
                      <asp:textbox id="message" runat="server" textmode="MultiLine" text='<%# Bind("message") %>'></asp:textbox>
                    </itemtemplate>
                </asp:templatefield>
                <asp:commandfield buttontype="Button" showdeletebutton="True" />
            </columns>
        </asp:gridview>
        <asp:sqldatasource id="SqlDataSource1" runat="server" 
            connectionstring="<%$ ConnectionStrings:DatabaseConnectionString %>" 
            deletecommand="DELETE FROM [devis] WHERE [id] = @id" 
            insertcommand="INSERT INTO [devis] ([nom], [entreprise], [siteweb], [mail], [telephone], [pays], [interet], [budget], [message]) VALUES (@nom, @entreprise, @siteweb, @mail, @telephone, @pays, @interet, @budget, @message)" 
            selectcommand="SELECT * FROM [devis]" 
            updatecommand="UPDATE [devis] SET [nom] = @nom, [entreprise] = @entreprise, [siteweb] = @siteweb, [mail] = @mail, [telephone] = @telephone, [pays] = @pays, [interet] = @interet, [budget] = @budget, [message] = @message WHERE [id] = @id">
            <deleteparameters>
                <asp:parameter name="id" type="Int32" />
            </deleteparameters>
            <insertparameters>
                <asp:parameter name="nom" type="String" />
                <asp:parameter name="entreprise" type="String" />
                <asp:parameter name="siteweb" type="String" />
                <asp:parameter name="mail" type="String" />
                <asp:parameter name="telephone" type="Int64" />
                <asp:parameter name="pays" type="String" />
                <asp:parameter name="interet" type="String" />
                <asp:parameter name="budget" type="Int64" />
                <asp:parameter name="message" type="String" />
            </insertparameters>
            <updateparameters>
                <asp:parameter name="nom" type="String" />
                <asp:parameter name="entreprise" type="String" />
                <asp:parameter name="siteweb" type="String" />
                <asp:parameter name="mail" type="String" />
                <asp:parameter name="telephone" type="Int64" />
                <asp:parameter name="pays" type="String" />
                <asp:parameter name="interet" type="String" />
                <asp:parameter name="budget" type="Int64" />
                <asp:parameter name="message" type="String" />
                <asp:parameter name="id" type="Int32" />
            </updateparameters>
        </asp:sqldatasource>
              
    </div>
    </form>
</body>
</html>
