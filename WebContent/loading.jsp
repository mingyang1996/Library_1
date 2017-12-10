<!DOCTYPE html>
<html lang="zh">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>loading</title>
    <link rel="stylesheet" type="text/css" href="css/normalize.css" />
    <link rel="stylesheet" type="text/css" href="css/htmleaf-demo.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Dosis:700">
    <link rel="stylesheet" href="https://redom.js.org/font/interface.css">
    <style>
        body {
            font-family: 'Interface', sans-serif;
            overflow-x: hidden;
        }
        section {
            display: flex;
            align-items: center;
            justify-content: center;
            width: 100vw;
            height: 90vh;
        }
        section > p {
            font-size: 3rem;
            font-weight: 500;
            letter-spacing: -0.025em;
            color: #D5D6E2;
            text-align: center;
            padding: 1rem;
        }
        section > p > span {
            display: inline-block;
            position: relative;
            margin: .25rem .15em;
        }
        .logo {
            font-family: 'Dosis', 'Interface', sans-serif;
            font-weight: 700;
            font-size: 3rem;
            color: #D5D6E2;
        }
    </style>
</head>
<body>
<div class="htmleaf-container">
    <header class="htmleaf-header">
        <div class="htmleaf-links">
            <a class="htmleaf-icon icon-htmleaf-home-outline" href="index.jsp" target="_blank"><span> 首页</span></a>
            <a class="htmleaf-icon icon-htmleaf-arrow-forward-outline" href="login.jsp" target="_blank"><span> 登录</span></a>
        </div>
    </header>
    <section>
        <p>To see a world in a grain of sand.</p>
    </section>
    <section>
        <p>And a heaven in a wild flower.</p>
    </section>
    <section>
        <p class="logo">SHU.Library.</p>
    </section>
</div>
<script type="text/javascript" src="js/example.js"></script>

</body>
</html>