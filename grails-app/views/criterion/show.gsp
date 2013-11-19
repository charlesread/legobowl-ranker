
<%@ page import="com.charlesread.Criterion" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'criterion.label', default: 'Criterion')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-criterion" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-criterion" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list criterion">
			
				<g:if test="${criterionInstance?.code}">
				<li class="fieldcontain">
					<span id="code-label" class="property-label"><g:message code="criterion.code.label" default="Code" /></span>
					
						<span class="property-value" aria-labelledby="code-label"><g:fieldValue bean="${criterionInstance}" field="code"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${criterionInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="criterion.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${criterionInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${criterionInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="criterion.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${criterionInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${criterionInstance?.s1}">
				<li class="fieldcontain">
					<span id="s1-label" class="property-label"><g:message code="criterion.s1.label" default="S1" /></span>
					
						<span class="property-value" aria-labelledby="s1-label"><g:fieldValue bean="${criterionInstance}" field="s1"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${criterionInstance?.s2}">
				<li class="fieldcontain">
					<span id="s2-label" class="property-label"><g:message code="criterion.s2.label" default="S2" /></span>
					
						<span class="property-value" aria-labelledby="s2-label"><g:fieldValue bean="${criterionInstance}" field="s2"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${criterionInstance?.s3}">
				<li class="fieldcontain">
					<span id="s3-label" class="property-label"><g:message code="criterion.s3.label" default="S3" /></span>
					
						<span class="property-value" aria-labelledby="s3-label"><g:fieldValue bean="${criterionInstance}" field="s3"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${criterionInstance?.s4}">
				<li class="fieldcontain">
					<span id="s4-label" class="property-label"><g:message code="criterion.s4.label" default="S4" /></span>
					
						<span class="property-value" aria-labelledby="s4-label"><g:fieldValue bean="${criterionInstance}" field="s4"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${criterionInstance?.id}" />
					<g:link class="edit" action="edit" id="${criterionInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
