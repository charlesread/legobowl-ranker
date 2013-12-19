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
  <script src="<g:resource dir="flipclock" file="js/flipclock/flipclock.min.js" />"></script>
    <link rel="stylesheet" type="text/css" href="<g:resource dir="flipclock" file="css/flipclock.css" />" />
  %{--<script src="<g:resource dir="jquery-countdown-master" file="js/jquery.countdown.min.js" />"></script>--}%
  %{--<link rel="stylesheet" type="text/css" href="<g:resource dir="jquery-countdown-master" file="css/media.css" />" />--}%
  <style>
    body {
        background-color: #aaa;
    }
      .textDiv_Days {
          display: none;
      }
      .textDiv_Hours {
          display: none;
      }
      .countdown {
          width: 500px;
      }
    ul.flip:first-child {
        display: none;
    }
    .flip-clock-label{
        display: none;
    }
    .flip {
        font-size: 50px;
    }
    .flip-clock-wrapper {
        width: 300px;
    }
    .countdown {
        margin-top: 50px;
        margin-left: auto;
        margin-right: auto;
    }
      /*.flip-clock-wrapper ul {*/
          /*width: 120px;*/
          /*height: 180px;*/
      /*}*/
      .flip-clock-wrapper ul li a div div.inn {
          /*font-size: 170px;*/
          color:#fff;

      }
      /*.flip-clock-wrapper ul li a div.up:after {*/
          /*top:88px;*/
      /*}*/
  </style>
</head>
<body>
    %{--<div class="countdown" data-timer="180"></div>--}%
<div class="countdown"></div>
<script>
    var clock = $('.countdown').FlipClock(4,{
        autoStart: false,
        countdown: true,
        clockFace: 'MinuteCounter'
        //,reset: function() {alert(1)}
    });
    function start() {
        clock.start();
        t = setTimeout('playSound()',2000);
    }
    function reset() {
        clock.reset();
        //clock.setTime(180);
    }
    function playSound() {
        document.getElementById('bell').play();
    }
</script>
<button onclick="start()" value="Start Countdown">Start Countdown</button>
<button onclick="reset()" value="Reset Countdown">Reset Countdown</button>
<button onclick="playSound()" value="Reset Countdown">Ring Bell</button>
<audio id="bell" controls>
    <source src="<g:resource dir="audio" file="bell.mp3" />" type="audio/mpeg">
    %{--<source src="<g:resource dir="audio" file="bell.ogg" />" type="audio/ogg">--}%
    <embed height="50" width="100" src="<g:resource dir="audio" file="bell.mp3" />">
</audio>
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