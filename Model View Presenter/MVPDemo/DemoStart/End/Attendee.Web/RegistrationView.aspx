<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrationView.aspx.cs"
    Inherits="Attendee.Web_CS.RegistrationView" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body style="text-align: center">
    <span style="font-family: Arial"><span style="font-size: 1.4em"><strong>Registration
        Form</strong></span></span><br />
    <br />
    <table border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
            <td colspan="3" style="text-align: left;">
                <strong>Attendee Information</strong>
            </td>
        </tr>
        <tr>
            <td style="text-align: left; width: 259px;">
                <asp:Label ID="Label1" runat="server" Text="First Name:" Width="104px"></asp:Label>
            </td>
            <td style="text-align: left; width: 295px;">
                <asp:TextBox ID="TextBoxFirstName" runat="server"></asp:TextBox>
            </td>
            <td style="width: 5px">
            </td>
        </tr>
        <tr>
            <td style="text-align: left; width: 259px;">
                <asp:Label ID="Label2" runat="server" Text="Last Name:" Width="104px"></asp:Label>
            </td>
            <td style="text-align: left; width: 295px;">
                <asp:TextBox ID="TextBoxLastName" runat="server"></asp:TextBox>
            </td>
            <td style="width: 5px">
            </td>
        </tr>
        <tr>
            <td style="text-align: left; width: 259px; height: 22px;">
                <asp:Label ID="Label3" runat="server" Text="Age:" Width="104px"></asp:Label>
            </td>
            <td style="text-align: left; width: 295px; height: 22px;">
                <asp:TextBox ID="TextBoxAge" runat="server"></asp:TextBox>
            </td>
            <td style="width: 5px; height: 22px;">
            </td>
        </tr>
        <tr>
            <td style="text-align: right;" colspan="2">
                <asp:Button ID="ButtonRegister" runat="server" Text="Register" ValidationGroup="FormValidation"
                    OnClick="ButtonRegister_Click" />
            </td>
            <td style="text-align: right; width: 5px;">
            </td>
        </tr>
    </table>
</body>
</html>
