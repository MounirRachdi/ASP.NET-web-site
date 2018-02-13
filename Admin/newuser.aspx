<%@ Page Language="C#" AutoEventWireup="true" Inherits="Admin_newuser" Codebehind="newuser.aspx.cs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:panel id="Panel2" runat="server" width="500px" backcolor="#EFF3FB" 
        height="403px" >
    
    <table style="font-family:Verdana;font-size:100%; height: 250px; width: 500px;" >
           
                        <tr>
                            <td align="center" colspan="2" 
                                style="color:White;background-color:#5D7B9D;font-weight:bold;">
                                Inscrivez-vous pour obtenir votre nouveau compte</td>
                        </tr>
                        <tr>
                            <td align="right" class="style3">
                                <asp:label id="UserNameLabel" runat="server" associatedcontrolid="UserName">Nom d&#39;utilisateur&nbsp;:</asp:label>
                            </td>
                            <td class="style3">
                                <asp:textbox id="UserName" runat="server"></asp:textbox>
                                <asp:requiredfieldvalidator id="UserNameRequired" runat="server" 
                                    controltovalidate="UserName" errormessage="Un nom d'utilisateur est requis." 
                                    tooltip="Un nom d'utilisateur est requis." validationgroup="CreateUserWizard1">*</asp:requiredfieldvalidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:label id="PasswordLabel" runat="server" associatedcontrolid="Password">Mot de passe&nbsp;:</asp:label>
                            </td>
                            <td class="style3">
                                <asp:textbox id="Password" runat="server" textmode="Password"></asp:textbox>
                                <asp:requiredfieldvalidator id="PasswordRequired" runat="server" 
                                    controltovalidate="Password" errormessage="Un mot de passe est requis." 
                                    tooltip="Un mot de passe est requis." validationgroup="CreateUserWizard1">*</asp:requiredfieldvalidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:label id="ConfirmPasswordLabel" runat="server" 
                                    associatedcontrolid="ConfirmPassword">Confirmer le mot de passe&nbsp;:</asp:label>
                            </td>
                            <td class="style3">
                                <asp:textbox id="ConfirmPassword" runat="server" textmode="Password"></asp:textbox>
                                <asp:requiredfieldvalidator id="ConfirmPasswordRequired" runat="server" 
                                    controltovalidate="ConfirmPassword" 
                                    errormessage="La confirmation du mot de passe est requise." 
                                    tooltip="La confirmation du mot de passe est requise." 
                                    validationgroup="CreateUserWizard1">*</asp:requiredfieldvalidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:label id="EmailLabel" runat="server" associatedcontrolid="Email">Adresse de messagerie&nbsp;:</asp:label>
                            </td>
                            <td class="style3">
                                <asp:textbox id="Email" runat="server"></asp:textbox>
                                <asp:requiredfieldvalidator id="EmailRequired" runat="server" 
                                    controltovalidate="Email" errormessage="Une adresse de messagerie est requise." 
                                    tooltip="Une adresse de messagerie est requise." 
                                    validationgroup="CreateUserWizard1">*</asp:requiredfieldvalidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:label id="QuestionLabel" runat="server" associatedcontrolid="Question">Question de sécurité&nbsp;:</asp:label>
                            </td>
                            <td class="style3">
                                <asp:textbox id="Question" runat="server"></asp:textbox>
                                <asp:requiredfieldvalidator id="QuestionRequired" runat="server" 
                                    controltovalidate="Question" 
                                    errormessage="Une question de sécurité est requise." 
                                    tooltip="Une question de sécurité est requise." 
                                    validationgroup="CreateUserWizard1">*</asp:requiredfieldvalidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:label id="AnswerLabel" runat="server" associatedcontrolid="Answer">Réponse de sécurité&nbsp;:</asp:label>
                            </td>
                            <td class="style3">
                                <asp:textbox id="Answer" runat="server"></asp:textbox>
                                <asp:requiredfieldvalidator id="AnswerRequired" runat="server" 
                                    controltovalidate="Answer" errormessage="Une réponse de sécurité est requise." 
                                    tooltip="Une réponse de sécurité est requise." 
                                    validationgroup="CreateUserWizard1">*</asp:requiredfieldvalidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" colspan="2">
                                <asp:comparevalidator id="PasswordCompare" runat="server" 
                                    controltocompare="Password" controltovalidate="ConfirmPassword" 
                                    display="Dynamic" 
                                    errormessage="Le mot de passe et le mot de passe de confirmation doivent correspondre." 
                                    validationgroup="CreateUserWizard1"></asp:comparevalidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" colspan="2" style="color:Red;">
                                <asp:literal id="ErrorMessage" runat="server" enableviewstate="False"></asp:literal>
                            </td>
                        </tr>
                        <tr><td></td><td>
                            <asp:button id="Button1" runat="server" text="Ajouter" onclick="Button1_Click1" 
                                width="111px" /></td></tr>
                    </table>
                    </asp:panel>
    </div>
    </form>
</body>
</html>
