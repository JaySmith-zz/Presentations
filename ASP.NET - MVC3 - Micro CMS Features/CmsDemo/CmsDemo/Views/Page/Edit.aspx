<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<CmsDemo.ViewModels.PageEditModel>" ValidateRequest="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Edit
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

	<h2>Edit Page</h2>

	<% using (Html.BeginForm()) {%>
		<%= Html.ValidationSummary(true) %>
		
		<fieldset>
			
			<%= Html.HiddenFor(model => model.Referrer) %>
			<%= Html.HiddenFor(model => model.Page.PageId) %>
			
			<div class="editor-label">
				<%= Html.LabelFor(model => model.Page.Title) %>
			</div>
			<div class="editor-field">
				<%= Html.TextBoxFor(model => model.Page.Title)%>
				<%= Html.ValidationMessageFor(model => model.Page.Title)%>
			</div>
			
			<div class="editor-label">
				<%= Html.LabelFor(model => model.Page.Content)%>
			</div>
			<div class="editor-field">
				<%= Html.TextAreaFor(model => model.Page.Content, 20, 100, new { @class = "htmlEditor" })%>
				<%= Html.ValidationMessageFor(model => model.Page.Content)%>
			</div>

			<div class="wmd-preview"></div>
			
			<p>
				<input type="submit" value="Save" />
			</p>
		</fieldset>

	<% } %>
	<script src="../../Scripts/jquery-1.4.1.js" type="text/javascript"></script>
	<script src="../../Scripts/tiny_mce/tiny_mce.js" type="text/javascript"></script>
	<script type="text/javascript">
		tinymce.init({
			// General options
			mode: "exact",
			elements: "Page_Content",
			theme: "advanced",
			plugins: "inlinepopups,fullscreen,contextmenu,emotions,table,iespell,advlink",
			convert_urls: false,

			// Theme options
			theme_advanced_buttons1: "fullscreen,code,|,cut,copy,paste,|,undo,redo,|,bold,italic,underline,strikethrough,|,justifyleft,justifycenter,justifyright,justifyfull,|,bullist,numlist,outdent,indent,|,iespell,link,unlink,sub,sup,removeformat,cleanup,charmap,emotions,|,formatselect,fontselect,fontsizeselect",
			theme_advanced_buttons2: "",
			theme_advanced_toolbar_location: "top",
			theme_advanced_toolbar_align: "left",
			theme_advanced_statusbar_location: "bottom",
			theme_advanced_resizing: true,

			tab_focus: ":prev,:next"
		});
</script>

	<!-- /TinyMCE -->


</asp:Content>

