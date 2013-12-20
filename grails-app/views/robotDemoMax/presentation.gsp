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
    <script>
    $(document).ready(function(){
        $("#start").click(function(){
            start();
        });
        $("#reset").click(function(){
            reset();
        });
        $("#play").click(function(){
            playSound();
        });
        $("#controls").hover(
            function(){
                $("#controls").animate({opacity:1});
            },
            function(){
                $("#controls").animate({opacity:0});
        });
    });
    </script>
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
    #timerwrapper {
        height: 200px;
        width: 320px;
        margin-top: 50px;
        margin-left: auto;
        margin-right: auto;

    }
    #controls table {
        margin-left: auto;
        margin-right: auto;
    }
    #controls {
        opacity: 0;
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
<div id="timerwrapper">
    <div class="countdown"></div>
    <div id="controls">
        <table>
            <tr>
                <td><g:img id="start" dir="images" file="start.png"/> </td>
                <td><g:img id="reset" dir="images" file="reset.png"/> </td>
                <td><g:img id="play" dir="images" file="play.png"/> </td>
            </tr>
        </table>
    </div>
</div>
<script>

    var time = 180;
    var clock = $('.countdown').FlipClock(time,{
        autoStart: false,
        countdown: true,
        clockFace: 'MinuteCounter'
        //,stop: function() {playSound();}
    });
    function reset() {
        clock.reset();
        clock.setTime(time);
    }
    function start() {
        reset();
        clock.start();
        setTimeout('playSound()',2000);
        setTimeout('playSound()',(time * 1000) + 2000);
    }

    function playSound() {
        $('audio')[0].load();
        $('audio')[0].play();
    }
</script>


<audio controls="controls" preload="auto" style="display: none;">
    <source src="<g:resource dir="audio" file="chimes.mp3" />" type="audio/mpeg">
    %{--<source src="<g:resource dir="audio" file="bell.ogg" />" type="audio/ogg">--}%
    %{--<embed height="50" width="100" src="<g:resource dir="audio" file="bell.mp3" />">--}%
</audio>

<div id="out"></div>
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