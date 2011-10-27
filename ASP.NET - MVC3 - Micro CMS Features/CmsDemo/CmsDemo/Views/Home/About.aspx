<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<CmsDemo.ViewModels.HomeAboutModel>" %>

<asp:Content ID="aboutTitle" ContentPlaceHolderID="TitleContent" runat="server">
    <%= Model.Page.Title %>
</asp:Content>

<asp:Content ID="aboutContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%= Model.Page.Title %></h2>
    <%= Html.DisplayFor(x => x.Page) %>
</asp:Content>
