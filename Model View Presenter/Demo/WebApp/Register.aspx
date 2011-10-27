<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="Register.aspx.cs" Inherits="WebApp.Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <span style="font-family: Arial"><span style="font-size: 1.4em"><strong>Registration
        Form</strong></span></span><br />
    <br />
    <table border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
            <td colspan="4" style="text-align; left;">
                <asp:Label ID="LabelMessage" runat="server"></asp:Label>
            </td>
        </tr>
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
                    OnClick="ButtonRegisterClick" />
            </td>
            <td style="text-align: right; width: 5px;">
            </td>
        </tr>
    </table>
</asp:Content>
