<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<dynamic>" %>
<%@ Import Namespace="Adxstudio.Xrm.Resources" %> 

<% var signInUrl = Url.SignInUrl((string) ViewBag.ReturnUrl); %>
<% if (!string.IsNullOrWhiteSpace(signInUrl)) { %>
	<a class="<%: (string) ViewBag.Class %>" href="<%: signInUrl %>" title="<%: Html.SnippetLiteral("links/login", ResourceManager.GetString("Sign_In")) %>">
		<span class="fa fa-sign-in" aria-hidden="true"></span>
		<%: Html.SnippetLiteral("links/login", ResourceManager.GetString("Sign_In")) %>
	</a>
<% } %>
