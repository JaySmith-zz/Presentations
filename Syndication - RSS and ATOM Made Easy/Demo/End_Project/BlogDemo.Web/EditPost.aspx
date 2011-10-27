<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true"
    CodeBehind="EditPost.aspx.cs" Inherits="BlogDemo.Web.EditPost" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Literal ID="litMessage" runat="server"></asp:Literal>
    <table>
        <tr>
            <td>
                Title:
            </td>
            <td>
                <asp:TextBox ID="txtTitle" runat="server" Columns="80"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Content:
            </td>
            <td>
                <asp:TextBox ID="txtContent" runat="server" TextMode="MultiLine" Columns="60" Rows="10"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Date:
            </td>
            <td>
                <asp:TextBox ID="txtPostDate" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Author:
            </td>
            <td>
                <asp:TextBox ID="txtAuthor" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
            </td>
            <td>
                <asp:Button ID="btnSave" runat="server" Text="Save" />&nbsp;&nbsp;<asp:Button ID="btnDelete"
                    runat="server" Text="Delete" />
            </td>
        </tr>
    </table>
</asp:Content>
