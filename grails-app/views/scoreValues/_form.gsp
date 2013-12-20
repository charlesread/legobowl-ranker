<%@ page import="com.charlesread.ScoreValues" %>

<table class="scoreInfo">
    <tr>
        <td>
            <label for="contestant">
                <g:message code="score.contestant.label" default="Contestant"/>
                <span class="required-indicator">*</span>
            </label>
            <g:select noSelection="['':'---select a contestant---']" id="contestant" name="contestant.id" from="${com.charlesread.Contestant.list()}" optionKey="id"
                      value="${scoreValuesInstance?.contestant?.id}" class="many-to-one"/>
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
                <g:select id="judge" name="judge.id" from="${com.charlesread.AppUser.list(sort: 'userFullName')}" optionKey="id" required=""
                          value="${scoreValuesInstance?.judge?.id ?: currentUser.id}" class="many-to-one"/>
            </td>
        </sec:ifAnyGranted>

    </tr>
</table>

<div class="blockWrapper">
    <span><g:message code="score.a1.label" /></span>
    <g:criterionBlock color="#FFD0CA" code="a11" name="s11" criterion="${scoreValuesInstance.s11}"></g:criterionBlock>
    <g:criterionBlock color="#FFD0CA" code="a12" name="s12" criterion="${scoreValuesInstance.s12}"></g:criterionBlock>
    <g:criterionBlock color="#FFD0CA" code="a13" name="s13" criterion="${scoreValuesInstance.s13}"></g:criterionBlock>
</div>

<div class="blockWrapper">
    <span><g:message code="score.a2.label" /></span>
    <g:criterionBlock color="#FFD0CA" code="a21" name="s21" criterion="${scoreValuesInstance.s21}"></g:criterionBlock>
    <g:criterionBlock color="#FFD0CA" code="a22" name="s22" criterion="${scoreValuesInstance.s22}"></g:criterionBlock>
    <g:criterionBlock color="#FFD0CA" code="a23" name="s23" criterion="${scoreValuesInstance.s23}"></g:criterionBlock>
</div>

<div class="blockWrapper">
    <span><g:message code="score.a3.label" /></span>
    <g:criterionBlock color="#FFD0CA" code="a31" name="s31" criterion="${scoreValuesInstance.s31}"></g:criterionBlock>
    <g:criterionBlock color="#FFD0CA" code="a32" name="s32" criterion="${scoreValuesInstance.s32}"></g:criterionBlock>
    <g:criterionBlock color="#FFD0CA" code="a33" name="s33" criterion="${scoreValuesInstance.s33}"></g:criterionBlock>
</div>

<div class="blockWrapper">
    <span>Comments</span>
    <div><g:textArea class="scoreComment" name="scoreComment" value="${scoreValuesInstance?.scoreComment}" /></div>
</div>