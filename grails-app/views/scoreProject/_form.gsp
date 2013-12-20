<%@ page import="com.charlesread.ScoreProject" %>

<table class="scoreInfo">
    <tr>
        <td>
            <label for="contestant">
                <g:message code="score.contestant.label" default="Contestant"/>
                <span class="required-indicator">*</span>
            </label>
            <g:select noSelection="['':'---select a contestant---']" id="contestant" name="contestant.id" from="${com.charlesread.Contestant.list()}" optionKey="id"
                      value="${scoreProjectInstance?.contestant?.id}" class="many-to-one"/>
        </td>
        <sec:ifNotGranted roles="ROLE_ADMIN">
            <input type="hidden" name="judge.id" value="<sec:loggedInUserInfo field='id' />" />

        </sec:ifNotGranted>


        <sec:ifAnyGranted roles="ROLE_ADMIN">
            <td>
                <label for="judge">
                    <g:message code="score.judge.label" default="Judge"/>
                    <span class="required-indicator">*</span>
                </label>
                <g:select id="judge" name="judge.id" from="${com.charlesread.AppUser.list()}" optionKey="id" required=""
                          value="${scoreProjectInstance?.judge?.id ?: currentUser.id}" class="many-to-one"/>
            </td>
        </sec:ifAnyGranted>

    </tr>
</table>

<div class="blockWrapper">
    <span><g:message code="score.b1.label" /></span>
    <g:criterionBlock color="#FFFFC0" code="b11" name="s11" criterion="${scoreProjectInstance.s11}"></g:criterionBlock>
    <g:criterionBlock color="#FFFFC0" code="b12" name="s12" criterion="${scoreProjectInstance.s12}"></g:criterionBlock>
    <g:criterionBlock color="#FFFFC0" code="b13" name="s13" criterion="${scoreProjectInstance.s13}"></g:criterionBlock>
    <g:criterionBlock color="#FFFFC0" code="b14" name="s14" criterion="${scoreProjectInstance.s14}"></g:criterionBlock>
</div>

<div class="blockWrapper">
    <span><g:message code="score.b2.label" /></span>
    <g:criterionBlock color="#FFFFC0" code="b21" name="s21" criterion="${scoreProjectInstance.s21}"></g:criterionBlock>
    <g:criterionBlock color="#FFFFC0" code="b22" name="s22" criterion="${scoreProjectInstance.s22}"></g:criterionBlock>
    <g:criterionBlock color="#FFFFC0" code="b23" name="s23" criterion="${scoreProjectInstance.s23}"></g:criterionBlock>
</div>

<div class="blockWrapper">
    <span><g:message code="score.b3.label" /></span>
    <g:criterionBlock color="#FFFFC0" code="b31" name="s31" criterion="${scoreProjectInstance.s31}"></g:criterionBlock>
    <g:criterionBlock color="#FFFFC0" code="b32" name="s32" criterion="${scoreProjectInstance.s32}"></g:criterionBlock>
    <g:criterionBlock color="#FFFFC0" code="b33" name="s33" criterion="${scoreProjectInstance.s33}"></g:criterionBlock>
</div>

<div class="blockWrapper">
    <span>Comments</span>
    <div><g:textArea class="scoreComment" name="scoreComment" value="${scoreProjectInstance?.scoreComment}" /></div>
</div>