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
        <td><g:message code="queue.sequence.label" default="Contestant" /></td>
        <td><g:select id="contestant" name="contestant.id" from="${com.charlesread.Contestant.list(sort: 'code')}" optionKey="id" required="" value="${queueInstance?.contestant?.id}" class="many-to-one"/></td>
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

