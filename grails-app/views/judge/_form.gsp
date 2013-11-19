<%@ page import="com.charlesread.Judge" %>



<div class="fieldcontain ${hasErrors(bean: judgeInstance, field: 'name', 'error')} ">
    <label for="name">
        <g:message code="judge.name.label" default="Name"/>

    </label>
    <g:textField name="name" value="${judgeInstance?.name}"/>
</div>

