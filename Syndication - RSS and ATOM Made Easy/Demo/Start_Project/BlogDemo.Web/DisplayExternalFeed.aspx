<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeBehind="DisplayExternalFeed.aspx.cs" Inherits="BlogDemo.Web.DisplayExternalFeed" %>

<%@ Import Namespace="BlogDemo.Web" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ListView ID="listViewPosts" runat="server">
        <LayoutTemplate>
            <div class="post">
                <asp:PlaceHolder ID="itemPlaceholder" runat="server"></asp:PlaceHolder>
            </div>
        </LayoutTemplate>
        <ItemTemplate>
            <div class="header">
                <h3>
                    <a href="ViewPost.aspx?postID=<%#Eval("Id")%>">
                        <%#Eval("Title.Text")%></a><br /></h3>
                <div class="date">
                    <%#Eval("PublishDate", "{0:d}")%></div>
            </div>
            <div class="content">
                <%#Eval("Summary.Text")%>
            </div>
            <div class="footer">
                <ul id="postFooter">
                    <li class="categories">
                    </li>
                </ul>
            </div>
        </ItemTemplate>
    </asp:ListView>
</asp:Content>
