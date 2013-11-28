<%@ page import="com.charlesread.RobotDemo" %>

<style>
    .outerTable{
        width: 900px;
    }
    .outerTable tbody + tr:first-child td {
        width: 300px;
    }
    .innerTable {

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
    .demoBlock {
        padding: 5px;
        margin-bottom: 10px;
        background-color: #555;
        border-radius: 5px;
    }

</style>

<table class="outerTable">
    <tr>
        <td>
            <g:singleCheckbox name="s1" points="20" />
            <g:doubleCheckboxLinked name="s2" points="30" />
            <g:doubleCheckboxLinked name="s3" points="30" />
            <g:singleCheckbox name="s4" points="20" />
            <g:doubleCheckboxLinked name="s5" points="25" />
            <g:singleCheckbox name="s6" points="30" />
            <g:singleCheckbox name="s7" points="20" />
        </td>
        <td>
            <g:tripleCheckboxLinked name="s8" points="30" />
            <g:singleRange name="s11" />
        </td>
        <td>
            <g:singleCheckbox name="s1" />
        </td>
    </tr>
</table>
