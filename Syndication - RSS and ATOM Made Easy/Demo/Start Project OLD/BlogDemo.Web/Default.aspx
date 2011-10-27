<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="BlogDemo.Web.Default" %>

<%@ Import Namespace="BlogDemo.Web" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ListView ID="lvwPosts" runat="server">
        <LayoutTemplate>
            <div class="post">
                <asp:PlaceHolder ID="itemPlaceholder" runat="server"></asp:PlaceHolder>
            </div>
        </LayoutTemplate>
        <ItemTemplate>
            <div class="header">
                <h3>
                    <a href="ViewPost.aspx?postID=<%#Eval("PostID")%>">
                        <%#Eval("Title")%></a><br /></h3>
                <div class="date">
                    <%#Eval("PostDate", "{0:d}")%></div>
            </div>
            <div class="content">
                <%#Eval("PostContent")%>
            </div>
            <div class="footer">
                <ul id="postFooter">
                    <li><a href="ViewPost.aspx?postID=<%#Eval("PostID")%>">Comments (<asp:Literal ID="litCommentCount"
                        runat="server"></asp:Literal>)</a></li>
                    <li class="categories">
                        <asp:Literal ID="litCategories" runat="server"></asp:Literal>
                    </li>
                </ul>
            </div>
        </ItemTemplate>
    </asp:ListView>
</asp:Content>
