
<%@ page import="com.charlesread.RobotDemo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'robotDemo.label', default: 'RobotDemo')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
        <g:render template="nav"/>
		<div id="show-robotDemo" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list robotDemo">
			
				<g:if test="${robotDemoInstance?.agg}">
				<li class="fieldcontain">
					<span id="agg-label" class="property-label"><g:message code="robotDemo.agg.label" default="Agg" /></span>
					
						<span class="property-value" aria-labelledby="agg-label"><g:fieldValue bean="${robotDemoInstance}" field="agg"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${robotDemoInstance?.contestant}">
				<li class="fieldcontain">
					<span id="contestant-label" class="property-label"><g:message code="robotDemo.contestant.label" default="Contestant" /></span>
					
						<span class="property-value" aria-labelledby="contestant-label"><g:link controller="contestant" action="show" id="${robotDemoInstance?.contestant?.id}">${robotDemoInstance?.contestant?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${robotDemoInstance?.judge}">
				<li class="fieldcontain">
					<span id="judge-label" class="property-label"><g:message code="robotDemo.judge.label" default="Judge" /></span>
					
						<span class="property-value" aria-labelledby="judge-label"><g:link controller="appUser" action="show" id="${robotDemoInstance?.judge?.id}">${robotDemoInstance?.judge?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${robotDemoInstance?.s1}">
				<li class="fieldcontain">
					<span id="s1-label" class="property-label"><g:message code="robotDemo.s1.label" default="S1" /></span>
					
						<span class="property-value" aria-labelledby="s1-label"><g:fieldValue bean="${robotDemoInstance}" field="s1"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${robotDemoInstance?.s10}">
				<li class="fieldcontain">
					<span id="s10-label" class="property-label"><g:message code="robotDemo.s10.label" default="S10" /></span>
					
						<span class="property-value" aria-labelledby="s10-label"><g:fieldValue bean="${robotDemoInstance}" field="s10"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${robotDemoInstance?.s11}">
				<li class="fieldcontain">
					<span id="s11-label" class="property-label"><g:message code="robotDemo.s11.label" default="S11" /></span>
					
						<span class="property-value" aria-labelledby="s11-label"><g:fieldValue bean="${robotDemoInstance}" field="s11"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${robotDemoInstance?.s12}">
				<li class="fieldcontain">
					<span id="s12-label" class="property-label"><g:message code="robotDemo.s12.label" default="S12" /></span>
					
						<span class="property-value" aria-labelledby="s12-label"><g:fieldValue bean="${robotDemoInstance}" field="s12"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${robotDemoInstance?.s13}">
				<li class="fieldcontain">
					<span id="s13-label" class="property-label"><g:message code="robotDemo.s13.label" default="S13" /></span>
					
						<span class="property-value" aria-labelledby="s13-label"><g:fieldValue bean="${robotDemoInstance}" field="s13"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${robotDemoInstance?.s14}">
				<li class="fieldcontain">
					<span id="s14-label" class="property-label"><g:message code="robotDemo.s14.label" default="S14" /></span>
					
						<span class="property-value" aria-labelledby="s14-label"><g:fieldValue bean="${robotDemoInstance}" field="s14"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${robotDemoInstance?.s15}">
				<li class="fieldcontain">
					<span id="s15-label" class="property-label"><g:message code="robotDemo.s15.label" default="S15" /></span>
					
						<span class="property-value" aria-labelledby="s15-label"><g:fieldValue bean="${robotDemoInstance}" field="s15"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${robotDemoInstance?.s16}">
				<li class="fieldcontain">
					<span id="s16-label" class="property-label"><g:message code="robotDemo.s16.label" default="S16" /></span>
					
						<span class="property-value" aria-labelledby="s16-label"><g:fieldValue bean="${robotDemoInstance}" field="s16"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${robotDemoInstance?.s17}">
				<li class="fieldcontain">
					<span id="s17-label" class="property-label"><g:message code="robotDemo.s17.label" default="S17" /></span>
					
						<span class="property-value" aria-labelledby="s17-label"><g:fieldValue bean="${robotDemoInstance}" field="s17"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${robotDemoInstance?.s18}">
				<li class="fieldcontain">
					<span id="s18-label" class="property-label"><g:message code="robotDemo.s18.label" default="S18" /></span>
					
						<span class="property-value" aria-labelledby="s18-label"><g:fieldValue bean="${robotDemoInstance}" field="s18"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${robotDemoInstance?.s19}">
				<li class="fieldcontain">
					<span id="s19-label" class="property-label"><g:message code="robotDemo.s19.label" default="S19" /></span>
					
						<span class="property-value" aria-labelledby="s19-label"><g:fieldValue bean="${robotDemoInstance}" field="s19"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${robotDemoInstance?.s2}">
				<li class="fieldcontain">
					<span id="s2-label" class="property-label"><g:message code="robotDemo.s2.label" default="S2" /></span>
					
						<span class="property-value" aria-labelledby="s2-label"><g:fieldValue bean="${robotDemoInstance}" field="s2"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${robotDemoInstance?.s20}">
				<li class="fieldcontain">
					<span id="s20-label" class="property-label"><g:message code="robotDemo.s20.label" default="S20" /></span>
					
						<span class="property-value" aria-labelledby="s20-label"><g:fieldValue bean="${robotDemoInstance}" field="s20"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${robotDemoInstance?.s21}">
				<li class="fieldcontain">
					<span id="s21-label" class="property-label"><g:message code="robotDemo.s21.label" default="S21" /></span>
					
						<span class="property-value" aria-labelledby="s21-label"><g:fieldValue bean="${robotDemoInstance}" field="s21"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${robotDemoInstance?.s22}">
				<li class="fieldcontain">
					<span id="s22-label" class="property-label"><g:message code="robotDemo.s22.label" default="S22" /></span>
					
						<span class="property-value" aria-labelledby="s22-label"><g:fieldValue bean="${robotDemoInstance}" field="s22"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${robotDemoInstance?.s23}">
				<li class="fieldcontain">
					<span id="s23-label" class="property-label"><g:message code="robotDemo.s23.label" default="S23" /></span>
					
						<span class="property-value" aria-labelledby="s23-label"><g:fieldValue bean="${robotDemoInstance}" field="s23"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${robotDemoInstance?.s24}">
				<li class="fieldcontain">
					<span id="s24-label" class="property-label"><g:message code="robotDemo.s24.label" default="S24" /></span>
					
						<span class="property-value" aria-labelledby="s24-label"><g:fieldValue bean="${robotDemoInstance}" field="s24"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${robotDemoInstance?.s25}">
				<li class="fieldcontain">
					<span id="s25-label" class="property-label"><g:message code="robotDemo.s25.label" default="S25" /></span>
					
						<span class="property-value" aria-labelledby="s25-label"><g:fieldValue bean="${robotDemoInstance}" field="s25"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${robotDemoInstance?.s3}">
				<li class="fieldcontain">
					<span id="s3-label" class="property-label"><g:message code="robotDemo.s3.label" default="S3" /></span>
					
						<span class="property-value" aria-labelledby="s3-label"><g:fieldValue bean="${robotDemoInstance}" field="s3"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${robotDemoInstance?.s4}">
				<li class="fieldcontain">
					<span id="s4-label" class="property-label"><g:message code="robotDemo.s4.label" default="S4" /></span>
					
						<span class="property-value" aria-labelledby="s4-label"><g:fieldValue bean="${robotDemoInstance}" field="s4"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${robotDemoInstance?.s5}">
				<li class="fieldcontain">
					<span id="s5-label" class="property-label"><g:message code="robotDemo.s5.label" default="S5" /></span>
					
						<span class="property-value" aria-labelledby="s5-label"><g:fieldValue bean="${robotDemoInstance}" field="s5"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${robotDemoInstance?.s6}">
				<li class="fieldcontain">
					<span id="s6-label" class="property-label"><g:message code="robotDemo.s6.label" default="S6" /></span>
					
						<span class="property-value" aria-labelledby="s6-label"><g:fieldValue bean="${robotDemoInstance}" field="s6"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${robotDemoInstance?.s7}">
				<li class="fieldcontain">
					<span id="s7-label" class="property-label"><g:message code="robotDemo.s7.label" default="S7" /></span>
					
						<span class="property-value" aria-labelledby="s7-label"><g:fieldValue bean="${robotDemoInstance}" field="s7"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${robotDemoInstance?.s8}">
				<li class="fieldcontain">
					<span id="s8-label" class="property-label"><g:message code="robotDemo.s8.label" default="S8" /></span>
					
						<span class="property-value" aria-labelledby="s8-label"><g:fieldValue bean="${robotDemoInstance}" field="s8"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${robotDemoInstance?.s9}">
				<li class="fieldcontain">
					<span id="s9-label" class="property-label"><g:message code="robotDemo.s9.label" default="S9" /></span>
					
						<span class="property-value" aria-labelledby="s9-label"><g:fieldValue bean="${robotDemoInstance}" field="s9"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${robotDemoInstance?.id}" />
					<g:link class="edit" action="edit" id="${robotDemoInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
