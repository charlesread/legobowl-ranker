<%@ page import="com.charlesread.Queue" %>

<table class="show">
    <tr>
        <td><g:message code="queue.sequence.label" default="Sequence" /></td>
        <td><g:textField name="sequence" value="${queueInstance.sequence}" placeholder="auto-populated"/></td>
    </tr>
    <tr>
        <td><g:message code="queue.completed.label" default="Completed?" /></td>
        <td><g:checkBox name="completed" value="${queueInstance?.completed}" /></td>
    </tr>
    <tr>
        <td><g:message code="queue.sequence.label" default="Contestant 1" /></td>
        <td><g:select id="contestant1" name="contestant1.id" from="${com.charlesread.Contestant.list(sort: 'code')}" optionKey="id" required="" value="${queueInstance?.contestant1?.id}" class="many-to-one"/></td>
    </tr>
    <tr>
        <td><g:message code="queue.sequence.label" default="Contestant 2" /></td>
        <td><g:select id="contestant2" name="contestant2.id" from="${com.charlesread.Contestant.list(sort: 'code')}" optionKey="id" required="" value="${queueInstance?.contestant2?.id}" class="many-to-one"/></td>
    </tr>
    <tr>
        <td><g:message code="queue.sequence.label" default="Table" /></td>
        <td><g:select id="robotDemoTable" name="table.id" from="${com.charlesread.RobotDemoTable.list(sort: 'name')}" optionKey="id" required="" value="${queueInstance?.table?.id}" class="many-to-one"/></td>
    </tr>
</table>

%{--<div class="fieldcontain ${hasErrors(bean: queueInstance, field: 'sequence', 'error')} ">--}%
	%{--<label for="sequence">--}%
		%{--<g:message code="queue.sequence.label" default="Sequence" />--}%
		%{----}%
	%{--</label>--}%
	%{--<g:field name="sequence" type="number" value="${queueInstance.sequence}"/>--}%
%{--</div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: queueInstance, field: 'completed', 'error')} ">--}%
	%{--<label for="completed">--}%
		%{--<g:message code="queue.completed.label" default="Completed" />--}%
		%{----}%
	%{--</label>--}%
	%{--<g:checkBox name="completed" value="${queueInstance?.completed}" />--}%
%{--</div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: queueInstance, field: 'contestant', 'error')} required">--}%
	%{--<label for="contestant">--}%
		%{--<g:message code="queue.contestant.label" default="Contestant" />--}%
		%{--<span class="required-indicator">*</span>--}%
	%{--</label>--}%
	%{--<g:select id="contestant" name="contestant.id" from="${com.charlesread.Contestant.list()}" optionKey="id" required="" value="${queueInstance?.contestant?.id}" class="many-to-one"/>--}%
%{--</div>--}%

