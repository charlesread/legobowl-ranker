<%@ page import="com.charlesread.Contestant" %>



<div class="fieldcontain ${hasErrors(bean: contestantInstance, field: 'name', 'error')} ">
    <label for="name">
        <g:message code="contestant.name.label" default="Name"/>

    </label>
    <g:textField name="name" value="${contestantInstance?.name}"/>
</div>

