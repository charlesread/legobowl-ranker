<%--
  Created by IntelliJ IDEA.
  User: charles
  Date: 12/29/13
  Time: 8:09 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
  <title></title>
    <style>
        body {
            font-family:Arial, Helvetica, sans-serif;
        }
        input.roundedOne[type=radio] {
            display: none;
        }
        input.roundedOne[type=radio] + span {
            display: inline-block;
            border-radius:5px;
            padding: 5px;
        }
        input.roundedOne[type=radio]:checked + span {
            background-color: #268DFF;
            color: #fff;
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
        .criterionBlock {
            border-radius: 5px;
            padding: 5px;
            background-color: #eee;
            margin: 15px;
        }
    </style>
</head>
<body>
<g:render template="data" />
</body>
</html>