<%@ page import="com.charlesread.RobotDemoTable" %>



<div class="fieldcontain ${hasErrors(bean: robotDemoTableInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="robotDemoTable.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${robotDemoTableInstance?.name}"/>
</div>

