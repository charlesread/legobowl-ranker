<%@ page import="com.charlesread.Score" %>



<div class="fieldcontain ${hasErrors(bean: scoreInstance, field: 'c1', 'error')} required">
    <label for="c1">
        <g:message code="score.c1.label" default="C1"/>
        <span class="required-indicator">*</span>
    </label>
    <g:field name="c1" type="number" value="${scoreInstance.c1}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: scoreInstance, field: 'c2', 'error')} required">
    <label for="c2">
        <g:message code="score.c2.label" default="C2"/>
        <span class="required-indicator">*</span>
    </label>
    <g:field name="c2" type="number" value="${scoreInstance.c2}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: scoreInstance, field: 'c3', 'error')} required">
    <label for="c3">
        <g:message code="score.c3.label" default="C3"/>
        <span class="required-indicator">*</span>
    </label>
    <g:field name="c3" type="number" value="${scoreInstance.c3}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: scoreInstance, field: 'contestant', 'error')} required">
    <label for="contestant">
        <g:message code="score.contestant.label" default="Contestant"/>
        <span class="required-indicator">*</span>
    </label>
    <g:select id="contestant" name="contestant.id" from="${com.charlesread.Contestant.list()}" optionKey="id"
              required="" value="${scoreInstance?.contestant?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: scoreInstance, field: 'judge', 'error')} required">
    <label for="judge">
        <g:message code="score.judge.label" default="Judge"/>
        <span class="required-indicator">*</span>
    </label>
    <g:select id="judge" name="judge.id" from="${com.charlesread.Judge.list()}" optionKey="id" required=""
              value="${scoreInstance?.judge?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: scoreInstance, field: 'sum', 'error')} required">
    <label for="sum">
        <g:message code="score.sum.label" default="Sum"/>
        <span class="required-indicator">*</span>
    </label>
    <g:field name="sum" type="number" value="${scoreInstance.sum}" required=""/>
</div>

