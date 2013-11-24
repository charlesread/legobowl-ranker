<%@ page import="com.charlesread.CriteriaGroup" %>



<div class="fieldcontain ${hasErrors(bean: criteriaGroupInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="criteriaGroup.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${criteriaGroupInstance?.name}"/>
</div>

