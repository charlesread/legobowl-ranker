
<%@ page import="com.charlesread.AppUserAppRole" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'appUserAppRole.label', default: 'AppUserAppRole')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-appUserAppRole" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-appUserAppRole" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list appUserAppRole">
			
				<g:if test="${appUserAppRoleInstance?.appRole}">
				<li class="fieldcontain">
					<span id="appRole-label" class="property-label"><g:message code="appUserAppRole.appRole.label" default="App Role" /></span>
					
						<span class="property-value" aria-labelledby="appRole-label"><g:link controller="appRole" action="show" id="${appUserAppRoleInstance?.appRole?.id}">${appUserAppRoleInstance?.appRole?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${appUserAppRoleInstance?.appUser}">
				<li class="fieldcontain">
					<span id="appUser-label" class="property-label"><g:message code="appUserAppRole.appUser.label" default="App User" /></span>
					
						<span class="property-value" aria-labelledby="appUser-label"><g:link controller="appUser" action="show" id="${appUserAppRoleInstance?.appUser?.id}">${appUserAppRoleInstance?.appUser?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${appUserAppRoleInstance?.id}" />
					<g:link class="edit" action="edit" id="${appUserAppRoleInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
