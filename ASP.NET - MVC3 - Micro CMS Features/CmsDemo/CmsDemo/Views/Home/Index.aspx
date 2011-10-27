<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<CmsDemo.ViewModels.HomeIndexModel>" %>
<%@ Import Namespace="CmsDemo.Domain" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Home Page
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div id="topContent">
    <%
        foreach (var content in Model.TopContent)
        {
            Html.DisplayForModel<PageContent>(content);
        }
    %>
    </div>

    <div id="mainContent1">
    <%= Html.DisplayFor(x => x.Page) %>
    </div>

    <div id="mainContent2">
    <%= Html.DisplayForModel<CmsDemo.Domain.Page>(Model.Page) %>
    </div>
</asp:Content>
