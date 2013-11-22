<%@ page import="com.charlesread.Score" %>

<style>
    tr.radiorow td {
        text-align: center;
    }

    .criterionBlock {
        border-radius: 5px;
        padding: 5px;
        background-color: #eee;
        margin: 15px;
        -webkit-box-shadow: 0 8px 6px -6px #666;
        -moz-box-shadow: 0 8px 6px -6px #666;
        box-shadow: 0 8px 6px -6px #666;
    }

    .blockWrapper {
        width: 900px;
        border-radius: 5px;
        background-color: #ffffff;
        padding: 10px;
        margin: 15px 0 15px 0;
    }

    div.blockWrapper span:first-child {
        font-size: 24px;
        font-weight: bold;
    }

    table.criterionTable tr:first-child td:first-child {
        font-weight: bold;
    }

    table.criterionTable tr:first-child td:nth-child(2) {
        font-size: 12px;
        font-style: italic;

    }

    table.criterionTable tr:nth-child(2) td {
        font-size: 14px;
    }



</style>



<table>
<tr>
<td>
    <label for="contestant">
        <g:message code="score.contestant.label" default="Contestant"/>
        <span class="required-indicator">*</span>
    </label>
    <g:select noSelection="['':'---select a contestant---']" id="contestant" name="contestant.id" from="${com.charlesread.Contestant.list()}" optionKey="id"
               value="${scoreInstance?.contestant?.id}" class="many-to-one"/>
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
              value="${scoreInstance?.judge?.id}" class="many-to-one"/>
        </td>
    </sec:ifAnyGranted>

</tr>
</table>

<div class="blockWrapper">
    <span>Inspiration</span>
<g:criterionBlock color="#FFD0CA" code="a11" criterion="${scoreInstance.a11}"></g:criterionBlock>
<g:criterionBlock color="#FFD0CA" code="a12" criterion="${scoreInstance.a12}"></g:criterionBlock>
<g:criterionBlock color="#FFD0CA" code="a13" criterion="${scoreInstance.a13}"></g:criterionBlock>
</div>

<div class="blockWrapper">
    <span>Teamwork</span>
<g:criterionBlock color="#FFD0CA" code="a21" criterion="${scoreInstance.a21}"></g:criterionBlock>
<g:criterionBlock color="#FFD0CA" code="a22" criterion="${scoreInstance.a22}"></g:criterionBlock>
<g:criterionBlock color="#FFD0CA" code="a23" criterion="${scoreInstance.a23}"></g:criterionBlock>
</div>

<div class="blockWrapper">
    <span>Gracious Professionalism</span>
<g:criterionBlock color="#FFD0CA" code="a31" criterion="${scoreInstance.a31}"></g:criterionBlock>
<g:criterionBlock color="#FFD0CA" code="a32" criterion="${scoreInstance.a32}"></g:criterionBlock>
<g:criterionBlock color="#FFD0CA" code="a33" criterion="${scoreInstance.a33}"></g:criterionBlock>
</div>

<div class="blockWrapper">
    <span>Research</span>
<g:criterionBlock color="#FFFFC0" code="b11" criterion="${scoreInstance.b11}"></g:criterionBlock>
<g:criterionBlock color="#FFFFC0" code="b12" criterion="${scoreInstance.b12}"></g:criterionBlock>
<g:criterionBlock color="#FFFFC0" code="b13" criterion="${scoreInstance.b13}"></g:criterionBlock>
<g:criterionBlock color="#FFFFC0" code="b14" criterion="${scoreInstance.b14}"></g:criterionBlock>
</div>

<div class="blockWrapper">
    <span>Innovative Solution</span>
<g:criterionBlock color="#FFFFC0" code="b21" criterion="${scoreInstance.b21}"></g:criterionBlock>
<g:criterionBlock color="#FFFFC0" code="b22" criterion="${scoreInstance.b22}"></g:criterionBlock>
<g:criterionBlock color="#FFFFC0" code="b23" criterion="${scoreInstance.b23}"></g:criterionBlock>
</div>

<div class="blockWrapper">
    <span>Presentation</span>
<g:criterionBlock color="#FFFFC0" code="b31" criterion="${scoreInstance.b31}"></g:criterionBlock>
<g:criterionBlock color="#FFFFC0" code="b32" criterion="${scoreInstance.b32}"></g:criterionBlock>
<g:criterionBlock color="#FFFFC0" code="b33" criterion="${scoreInstance.b33}"></g:criterionBlock>
</div>

<div class="blockWrapper">
    <span>Mechanical Design</span>
<g:criterionBlock color="#DBEFFF" code="c11" criterion="${scoreInstance.c11}"></g:criterionBlock>
<g:criterionBlock color="#DBEFFF" code="c12" criterion="${scoreInstance.c12}"></g:criterionBlock>
<g:criterionBlock color="#DBEFFF" code="c13" criterion="${scoreInstance.c13}"></g:criterionBlock>
</div>

<div class="blockWrapper">
    <span>Programming</span>
<g:criterionBlock color="#DBEFFF" code="c21" criterion="${scoreInstance.c21}"></g:criterionBlock>
<g:criterionBlock color="#DBEFFF" code="c22" criterion="${scoreInstance.c22}"></g:criterionBlock>
<g:criterionBlock color="#DBEFFF" code="c23" criterion="${scoreInstance.c23}"></g:criterionBlock>
</div>

<div class="blockWrapper">
    <span>Strategy & Innovation</span>
<g:criterionBlock color="#DBEFFF" code="c31" criterion="${scoreInstance.c31}"></g:criterionBlock>
<g:criterionBlock color="#DBEFFF" code="c32" criterion="${scoreInstance.c32}"></g:criterionBlock>
<g:criterionBlock color="#DBEFFF" code="c33" criterion="${scoreInstance.c33}"></g:criterionBlock>
</div>


