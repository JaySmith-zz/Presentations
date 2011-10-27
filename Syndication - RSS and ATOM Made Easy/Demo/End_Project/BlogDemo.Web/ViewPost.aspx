<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true"
    CodeBehind="ViewPost.aspx.cs" Inherits="BlogDemo.Web.ViewPost" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="post">
        <div class="header">
            <h3>
                <asp:Literal ID="litTitle" runat="server"></asp:Literal><br />
                <asp:Literal ID="litAuthor" runat="server"></asp:Literal></h3>
            <div class="editLink">
                <asp:HyperLink ID="lnkEdit" runat="server" Text="Edit Post">
                </asp:HyperLink></div>
            <div class="date">
                <asp:Literal ID="litPostDate" runat="server"></asp:Literal></div>
        </div>
        <div class="content">
            <asp:Literal ID="litContent" runat="server"></asp:Literal>
        </div>
    </div>
    <div class="footer">
        <ul id="postFooter">
            <li>
                <asp:ListView ID="lvwComments" runat="server">
                    <LayoutTemplate>
                        Comments:
                        <ul class="postComments">
                            <asp:PlaceHolder ID="itemPlaceholder" runat="server"></asp:PlaceHolder>
                        </ul>
                    </LayoutTemplate>
                    <ItemTemplate>
                        <li>
                            <%#Eval("Author.Name")%>
                            <br />
                            <%#Eval("Comments")%>
                            <br />
                            <br />
                        </li>
                    </ItemTemplate>
                </asp:ListView>
            </li>
        </ul>
    </div>
</asp:Content>
