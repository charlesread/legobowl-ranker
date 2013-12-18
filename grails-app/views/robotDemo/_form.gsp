<%@ page import="com.charlesread.RobotDemo" %>

<style>
    .outerTable{
        width: 900px;
    }
    .outerTable tbody + tr:first-child td {
        width: 300px;
    }
    .innerTable {
        font-size: 12px;
    }

    input[type=checkbox] {
        display: none;
    }
    input[type=checkbox] + span {
        display: inline-block;
        border-radius:5px;
        padding: 5px;
    }
    input[type=checkbox]:checked + span {
        background-color: #268DFF;
        color: #fff;
    }
    span {
        padding: 5px;
    }
    .demoBlock {
        padding: 5px;
        margin-bottom: 10px;
        background-color: #888;
        border-radius: 5px;
    }

    input[type="range"]{
        -webkit-appearance:none !important;
        height: 5px;
        margin-top: 15px;
        margin-bottom: 15px;
        background-color: #333;
        text-decoration: none;
        border: none;
        border: 0px;
        outline: none;
        outline: 0px;

    }
    input[type="range"] img {
        border: none;
        border: 0px;
        outline: none;
        outline: 0px;
    }


    input[type="range"]::-webkit-slider-thumb{
        border: none;
        border: 0px;
        outline: none;
        outline: 0px;
        text-decoration: none;
        -webkit-appearance:none;
        -moz-apperance:none;
        width:30px;
        height:30px;
        /*background-color: red;*/
        -webkit-border-radius:5px;
        -moz-border-radius:5px;
        -ms-border-radius:5px;
        -o-border-radius:5px;
        border-radius:5px;
        background-image:-webkit-gradient(linear, left top, left bottom, color-stop(0, #fefefe), color-stop(0.49, #dddddd), color-stop(0.51, #d1d1d1), color-stop(1, #a1a1a1));
        background-image:-webkit-gradient(linear, left top, left bottom, color-stop(0, #fefefe), color-stop(0.49, #dddddd), color-stop(0.51, #d1d1d1), color-stop(1, #a1a1a1));

    }

</style>

<table class="scoreInfo">
    <tr>
        <td>
            <label for="contestant">
                <g:message code="score.contestant.label" default="Contestant"/>
                <span class="required-indicator">*</span>
            </label>
            <g:select noSelection="['':'---select a contestant---']" id="contestant" name="contestant.id" from="${com.charlesread.Contestant.list()}" optionKey="id"
                      value="${scoreTechnicalInstance?.contestant?.id}" class="many-to-one"/>
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
                          value="${scoreTechnicalInstance?.judge?.id}" class="many-to-one"/>
            </td>
        </sec:ifAnyGranted>

    </tr>
</table>

<table class="outerTable">
    <tr>
        <td style="vertical-align: top;">
            <g:singleCheckbox name="s1" points="20" />
            <g:doubleCheckboxLinked name="s2" points="30" />
            <g:doubleCheckboxLinked name="s3" points="30" />
            <g:singleCheckbox name="s4" points="20" />
            <g:doubleCheckboxLinked name="s5" points="25" />
            <g:singleCheckbox name="s6" points="30" />
            <g:singleCheckbox name="s7" points="20" />
        </td>
        <td style="vertical-align: top;">
            <g:tripleCheckboxLinked name="s8" points="30" />
            <g:singleCheckbox name="s9" points="25" />
            <g:singleCheckBoxSingleRangeLinked name="s10" factor="5" max="13" />
            <g:singleRange name="s11" factor="2" max="16"/>
            <g:radioGroup name="s12" values="10,16,23,31"/>
            <g:radioGroup name="s13" values="20,30"/>
            <g:singleRange name="s14" factor="33" max="3" offset="1"/>
        </td>
        <td style="vertical-align: top;">
            <g:singleRange name="s15" factor="15" max="3" />
            <g:singleRange name="s16" factor="18" max="3"/>
            <g:singleRange name="s17" factor="12" max="3"/>
            <g:singleRange name="s18" factor="15" max="2"/>
            <g:singleRange name="s19" factor="4" max="12"/>
            <g:singleRange name="s20" factor="3" max="12"/>
            <g:singleCheckbox name="s21" points="25" />
            <g:singleRange name="s22" factor="-13" max="4"/>
            <g:singleRange name="s23" factor="-10" max="4"/>
            <g:singleRange name="s24" factor="-13" max="30"/>
            <g:singleRange name="s25" factor="-5" max="30"/>
        </td>
    </tr>
</table>
