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
  <script src="<g:resource dir="js" file="jquery-1.10.2.min.js" />"></script>
  <script src="<g:resource dir="jquery-countdown-master" file="js/jquery.countdown.min.js" />"></script>
  <link rel="stylesheet" type="text/css" href="<g:resource dir="jquery-countdown-master" file="css/media.css" />" />
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

      });
      function startCountdown() {
          $(".digits").html('');
          $(".digits").countdown({
              image: "/legobowl/static/jquery-countdown-master/img/digits.png",
              format: "mm:ss",
              startTime: "03:00"
          });
      }
      function resetCountdown() {
          window.FunctionName=startCountdown(){return false};
//          window.FunctionName=startCountdown(){
//              $(".digits").html('');
//              $(".digits").countdown({
//                  image: "/legobowl/static/jquery-countdown-master/img/digits.png",
//                  format: "mm:ss",
//                  startTime: "03:00"
//              });
//          };
      }
//      $(function(){
//          $(".digits").countdown({
//              image: "/legobowl/static/jquery-countdown-master/img/digits.png",
//              format: "mm:ss",
//              startTime: "00:00"
//          });
//      });
      //t = setTimeout('location.reload(true)', 10000);
  </script>
</head>
<body>
    %{--<div class="countdown" data-timer="180"></div>--}%
<div class="digits"></div>
<button onclick="startCountdown()" value="Start Countdown">Start Countdown</button>
<button onclick="resetCountdown()" value="Reset Countdown">Reset Countdown</button>
    <table>
        <thead>
            <th>Rank</th>
            <th>Team</th>
            <th>Highest</th>
            <th>Round 1</th>
            <th>Round 2</th>
            <th>Round 3</th>
        </thead>
        <g:render template="data" />
    </table>
</body>
</html>