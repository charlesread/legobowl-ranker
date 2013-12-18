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
  <title></title>
  %{--<script src="<g:resource dir="js" file="jquery-1.10.2.min.js" />"></script>--}%
  %{--<script src="<g:resource dir="TimeCircles" file="inc/TimeCircles.js" />"></script>--}%
  %{--<link rel="stylesheet" type="text/css" href="<g:resource dir="TimeCircles" file="inc/TimeCircles.css" />" />--}%
  <style>
      .textDiv_Days {
          display: none;
      }
      .textDiv_Hours {
          display: none;
      }
      .countdown {
          width: 500px;
      }
  </style>
  <script>
      $(document).ready(function() {
        $(".countdown").TimeCircles();
      });
      //t = setTimeout('location.reload(true)', 10000);
  </script>
</head>
<body>
    %{--<div class="countdown" data-timer="180"></div>--}%
    <table>
        <g:render template="data" />
    </table>
</body>
</html>