<%@ Control Language="C#" Inherits="ViewUserControl<CmsDemo.Domain.Page>" %>
<div id="pageContent">
    <%= Model.Content %>

    <% if (Roles.IsUserInRole("Administrator")) %>
    <% { %>
        <%=Html.ActionLink("Edit", "Edit", "Page", new {id = Model.PageId}, null)%>
    <% } %>
</>
