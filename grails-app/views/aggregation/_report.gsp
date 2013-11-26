
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
<head>
    <style type="text/css">
        #header {
            height: 100px;
            background-color: #ccc;
            border-top: 1px solid #000;
            border-bottom: 1px solid #000;
            text-align: center;
        }
        #header h1 {
            margin-top: 25px;
        }
        table.overall td, table.overall  th {
            padding: 0px 20px;
        }
        table.scores {
            font-size: 10px;
        }
        table.scores tr td {
            vertical-align: top;
        }
        div.scoreWrapper {
            margin-left: 50px;
            margin-top: 20px;
        }
        span.judge {
            font-size: 12px;
            font-weight: bold;
        }
        .partagg {
            background-color: #ddd;
        }
        .areaagg {
            background-color: #ddd;
        }
        .criteria {
            font-size: 16px;
            font-weight: bold;
            text-decoration: underline;
            margin-bottom: 10px;
            margin-left: 50px;
            padding-top: 30px;

        }
    </style>

</head>
<body>
<div id="header">
    <h1>
        ${totals.contestant} Score Report
    </h1>
</div>
<g:render template="teamScores" contextPath="/common" />
</body>
</html>
