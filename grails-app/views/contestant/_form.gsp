<%@ page import="com.charlesread.Contestant" %>



<table class="show">
    <tr>
        <td>Code</td>
        <td><g:textField name="code" value="${contestantInstance.code}" /> </td>
    </tr>

    <tr>
        <td>
            <g:message code="contestant.name.label" default="Name"/>
        </td>
        <td>
            <g:textField name="name" value="${contestantInstance?.name}"/>
        </td>
    </tr>
</table>
