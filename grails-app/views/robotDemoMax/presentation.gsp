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
        $("#twrapper").hover(
                function(){
                    $("#time").css('display', 'block')},
                function(){
                    $("#time").css('display', 'none');
                    reset();
        });
    });
    </script>
  <style>
    body {
        background-color: #EDF6FF;
        font-family:Arial, Helvetica, sans-serif;
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
        height: 160px;
        width: 320px;
        margin-top: 50px;
        margin-left: auto;
        margin-right: auto;

    }
    #tablewrapper {
        margin-left: auto;
        margin-right: auto;
        width: 860px;
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

    .presentationHolder {
        width: 100%;
    /*}*/
    }
    /*.presentationHolder tbody:first-child tr:first-child td:first-child {*/
        /*width: 50%;*/
        /*padding: 10px;*/

    /*}*/

      .presentation {

          width: 100%;
          border-collapse: separate;
          border-spacing:0px;
          font-size: 12px;
          -webkit-box-shadow: 0 8px 6px -6px #111;
          -moz-box-shadow: 0 8px 6px -6px #111;
          box-shadow: 0 8px 6px -6px #111;
      }
    .presentation thead tr th:first-child {
        border-top-left-radius: 5px;
        overflow: hidden;
    }
    .presentation thead tr th:last-child {
        border-top-right-radius: 5px;
        overflow: hidden;
    }
    .presentation tbody tr:last-child td:first-child {
        border-bottom-left-radius: 5px;
    }
    .presentation tbody tr:last-child td:last-child {
        border-bottom-right-radius: 5px;
    }
    .presentation tbody tr:nth-child(2n) {
        background-color: #aaa;
    }

    .presentation tbody tr:nth-child(2n+1) {
        background-color: #999;
    }
      .presentation thead tr {
          color: #fff;
          background: #333; /* for non-css3 browsers */

          filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#333', endColorstr='#444'); /* for IE */
          background: -webkit-gradient(linear, left top, left bottom, from(#333), to(#444)); /* for webkit browsers */
          background: -moz-linear-gradient(top,  #333,  #444); /* for firefox 3.6+ */
          text-align: left;
          border-bottom: 1px solid #000 ;
      }
      .presentation thead tr th {
          border-bottom: 1px solid #222 ;
      }
      .presentation tr th:nth-child(1) {
          width: 40px;
      }
    .presentation tr th:nth-child(2) {
        /*width: 200px;*/
    }
    .presentation tr th:nth-child(3) {
        width: 100px;
    }
    /*.presentation tr th:nth-child(n+4) {*/
        /*width: 100px;*/
    /*}*/
      .presentation th, .presentation td {
          padding: 5px;
      }

      #twrapper {
          position: absolute;
          top: 5px;
          right: 10px;
          width: 100px;
          height: 30px;
      }
      .queueWrapper {
          margin: 0px auto 20px auto;
          width: 1200px;
          /*background-color: #fff;*/
          text-align: center;
      }
      .queueTable {
          width: 100%;
      }
      .queueTable tr td {
          width: 25%;
      }

      .queueHolder {
          /*width: 100%;*/
          padding: 5px;
          margin: 5px;
          border-radius: 5px;
          background-color: #FFEED9;
          border: 1px dashed #F58500;

      }
      .queue {

      }
      .queue tr td {
          text-align: center;
      }
    .queue tr:first-child td:first-child {
        font-weight: bold;
        color: #F58500;
    }

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

    var time = 150;
    var t;
    var clock = $('.countdown').FlipClock(time,{
        autoStart: false,
        countdown: true,
        clockFace: 'MinuteCounter'
        //,stop: function() {playSound();}
    });
    function reset() {
//        getTime();
        clearTimeout(t);
        clock.reset();
        clock.setTime(time);
    }
    function start() {
//        getTime();
        reset();
        clock.start();
        setTimeout('playSound()',2000);
        t = setTimeout('playSound()',(time * 1000) + 2000);
    }

    function playSound() {
        $('audio')[0].load();
        $('audio')[0].play();
    }

    function getTime() {
        time = parseInt($("#time").val());
    }

</script>




<div id="out"></div>
<div id="twrapper">
    <input type="text" id="time" style="display: none;" />
</div>
<div class="queueWrapper">
    <table class="queueTable">
        <tr>
            <g:each in="${queues}" var="queue">
                <td>
                    <div class="queueHolder">
                    <table class="queue">
                        <tr>
                            <td>Table ${queue.table}</td>
                        </tr>
                        <td>
                            ${queue.contestant1} - ${queue.contestant2}
                        </td>
                    </table>
                    </div>
                </td>
            </g:each>
        </tr>
    </table>
</div>
<div id="tablewrapper">
    <table class="presentationHolder" cellpadding=10>
        <tr>
            <td width="50%">
                <table class='presentation'>
                    <thead>
                    <tr>
                        <th>Rank</th>
                        <th>Team</th>
                        <th>Highest Score</th>
                    </tr>
                    </thead>
                    <tbody>
                    <g:each in="${data1}" var="d">
                        <tr>
                            <td>${d.rank}</td>
                            <td>${d.contestant}</td>
                            <td>${d.agg}</td>
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </td>
            <td>
                <table class='presentation'>
                    <thead>
                    <tr>
                        <th>Rank</th>
                        <th>Team</th>
                        <th>Highest Score</th>
                    </tr>
                    </thead>
                    <tbody>
                    <g:each in="${data2}" var="d">
                        <tr>
                            <td>${d.rank}</td>
                            <td>${d.contestant}</td>
                            <td>${d.agg}</td>
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </td>
        </tr>
    </table>


</div>
<audio controls="controls" preload="auto" style="display: none;">
    <source src="<g:resource dir="audio" file="chimes.mp3" />" type="audio/mpeg">
    %{--<source src="<g:resource dir="audio" file="bell.ogg" />" type="audio/ogg">--}%
    %{--<embed height="50" width="100" src="<g:resource dir="audio" file="bell.mp3" />">--}%
</audio>
</body>
</html>