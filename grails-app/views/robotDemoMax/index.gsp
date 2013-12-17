<%--
  Created by IntelliJ IDEA.
  User: charles
  Date: 12/12/13
  Time: 5:56 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main">
    <title></title>
</head>
<body>
    <table class="list">
        <thead>
            <tr>
                <g:sortableColumn property="contestant" title="Contestant" />
                <g:sortableColumn property="agg" title="Top Robot Demonstration Score" />
                <g:sortableColumn property="run1" title="Run 1" />
                <g:sortableColumn property="run2" title="Run 2" />
                <g:sortableColumn property="run3" title="Run 3" />
                %{--<th><a href="">Contestant</a></th>--}%
                %{--<th><a href="">Top Robot Demonstration Score</a></th>--}%
                %{--<th><a href="">Run 1</a></th>--}%
                %{--<th><a href="">Run 2</a></th>--}%
                %{--<th><a href="">Run 3</a></th>--}%
            </tr>
        </thead>
        <g:render template="data" />
    </table>

</body>
</html>