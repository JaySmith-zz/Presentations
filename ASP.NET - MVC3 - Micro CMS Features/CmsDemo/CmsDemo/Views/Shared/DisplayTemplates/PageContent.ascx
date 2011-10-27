<%@ Control Language="C#" Inherits="ViewUserControl<CmsDemo.Domain.PageContent>" %>
<div id="pageContent">
    <%= Model.Content %>

    <% if (Roles.IsUserInRole("Administrator")) %>
    <% { %>
        <%=Html.ActionLink("Edit", "Edit", "Content", new {id = Model.Id}, null)%>
    <% } %>
</>
