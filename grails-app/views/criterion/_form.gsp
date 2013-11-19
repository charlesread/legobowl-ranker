<%@ page import="com.charlesread.Criterion" %>



<div class="fieldcontain ${hasErrors(bean: criterionInstance, field: 'code', 'error')} ">
	<label for="code">
		<g:message code="criterion.code.label" default="Code" />
		
	</label>
	<g:textField name="code" value="${criterionInstance?.code}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: criterionInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="criterion.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${criterionInstance?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: criterionInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="criterion.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${criterionInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: criterionInstance, field: 's1', 'error')} ">
	<label for="s1">
		<g:message code="criterion.s1.label" default="S1" />
		
	</label>
	<g:textField name="s1" value="${criterionInstance?.s1}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: criterionInstance, field: 's2', 'error')} ">
	<label for="s2">
		<g:message code="criterion.s2.label" default="S2" />
		
	</label>
	<g:textField name="s2" value="${criterionInstance?.s2}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: criterionInstance, field: 's3', 'error')} ">
	<label for="s3">
		<g:message code="criterion.s3.label" default="S3" />
		
	</label>
	<g:textField name="s3" value="${criterionInstance?.s3}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: criterionInstance, field: 's4', 'error')} ">
	<label for="s4">
		<g:message code="criterion.s4.label" default="S4" />
		
	</label>
	<g:textField name="s4" value="${criterionInstance?.s4}"/>
</div>

