
<%@ page import="com.charlesread.AppUserAppRole" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'appUserAppRole.label', default: 'AppUserAppRole')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-appUserAppRole" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-appUserAppRole" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<th><g:message code="appUserAppRole.appRole.label" default="App Role" /></th>
					
						<th><g:message code="appUserAppRole.appUser.label" default="App User" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${appUserAppRoleInstanceList}" status="i" var="appUserAppRoleInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${appUserAppRoleInstance.id}">${fieldValue(bean: appUserAppRoleInstance, field: "appRole")}</g:link></td>
					
						<td>${fieldValue(bean: appUserAppRoleInstance, field: "appUser")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${appUserAppRoleInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
