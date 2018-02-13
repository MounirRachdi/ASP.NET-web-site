<%@ Page Language="C#" AutoEventWireup="true" Inherits="setting" Codebehind="setting.aspx.cs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:changepassword id="ChangePassword1" runat="server" 
            onchangedpassword="ChangePassword1_ChangedPassword">
            <changepasswordtemplate>
                <table cellpadding="1" cellspacing="0" style="border-collapse:collapse;">
                    <tr>
                        <td>
                            <table cellpadding="0">
                                <tr>
                                    <td align="center" colspan="2">
                                        Modifier votre mot de passe</td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        <asp:label id="CurrentPasswordLabel" runat="server" 
                                            associatedcontrolid="CurrentPassword">Mot de passe&nbsp;:</asp:label>
                                    </td>
                                    <td>
                                        <asp:textbox id="CurrentPassword" runat="server" textmode="Password"></asp:textbox>
                                        <asp:requiredfieldvalidator id="CurrentPasswordRequired" runat="server" 
                                            controltovalidate="CurrentPassword" errormessage="Un mot de passe est requis." 
                                            tooltip="Un mot de passe est requis." validationgroup="ChangePassword1">*</asp:requiredfieldvalidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        <asp:label id="NewPasswordLabel" runat="server" 
                                            associatedcontrolid="NewPassword">Nouveau mot de passe&nbsp;:</asp:label>
                                    </td>
                                    <td>
                                        <asp:textbox id="NewPassword" runat="server" textmode="Password"></asp:textbox>
                                        <asp:requiredfieldvalidator id="NewPasswordRequired" runat="server" 
                                            controltovalidate="NewPassword" 
                                            errormessage="Un nouveau mot de passe est requis." 
                                            tooltip="Un nouveau mot de passe est requis." validationgroup="ChangePassword1">*</asp:requiredfieldvalidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        <asp:label id="ConfirmNewPasswordLabel" runat="server" 
                                            associatedcontrolid="ConfirmNewPassword">Confirmer le nouveau mot de passe&nbsp;:</asp:label>
                                    </td>
                                    <td>
                                        <asp:textbox id="ConfirmNewPassword" runat="server" textmode="Password"></asp:textbox>
                                        <asp:requiredfieldvalidator id="ConfirmNewPasswordRequired" runat="server" 
                                            controltovalidate="ConfirmNewPassword" 
                                            errormessage="La confirmation du nouveau mot de passe est requise." 
                                            tooltip="La confirmation du nouveau mot de passe est requise." 
                                            validationgroup="ChangePassword1">*</asp:requiredfieldvalidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" colspan="2">
                                        <asp:comparevalidator id="NewPasswordCompare" runat="server" 
                                            controltocompare="NewPassword" controltovalidate="ConfirmNewPassword" 
                                            display="Dynamic" 
                                            errormessage="La valeur de Confirmer le nouveau mot de passe doit correspondre à l'entrée Nouveau mot de passe." 
                                            validationgroup="ChangePassword1"></asp:comparevalidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" colspan="2" style="color:Red;">
                                        
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        <asp:button id="ChangePasswordPushButton" runat="server" 
                                            commandname="ChangePassword" onclick="ChangePasswordPushButton_Click" 
                                            text="Modifier le mot de passe" validationgroup="ChangePassword1" />
                                    </td>
                                    <td>
                                        <asp:button id="CancelPushButton" runat="server" causesvalidation="False" 
                                            commandname="Cancel" text="Annuler" />
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </changepasswordtemplate>
        </asp:changepassword>
    </div>
    </form>
</body>
</html>
