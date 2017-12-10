<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en" class="no-js">
<head>
    <meta charset="UTF-8" />
    <title>manager_out</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href='http://fonts.useso.com/css?family=Raleway:400,300,700' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" type="text/css" href="manager_out_css/normalize.css" />
    <link rel="stylesheet" type="text/css" href="manager_out_css/demo.css" />
    <link rel="stylesheet" type="text/css" href="manager_out_css/cs-select.css" />
    <link rel="stylesheet" type="text/css" href="manager_out_css/cs-skin-rotate.css" />
    <!--[if IE]>
    <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
</head>
<body class="color-6" style="height: 1000px;">
<div class="container">
    <header class="codrops-header">
        <h1><span>Inspiration for</span> Classification Search </h1>
    </header>
    <table>
        <col/>
    </table>
    <section>
        <!--<label class="select-label">Choose your Dinosaur:</label>-->
        <select class="cs-select cs-skin-rotate" style="margin-left: 10px;">
            <option value="1">书名</option>
            <option value="2">Velociraptor</option>
            <option value="3">Spinosaurus</option>
            <option value="4">Archaeopteryx</option>
            <option value="5">Apatosaurus</option>
        </select>

        <!--<label class="select-label">Choose your Dinosaur:</label>-->
        <select class="cs-select cs-skin-rotate" style="margin-left: 10px;">
            <option value="1">作者</option>
            <option value="2">Velociraptor</option>
            <option value="3">Spinosaurus</option>
            <option value="4">Archaeopteryx</option>
            <option value="5">Apatosaurus</option>
        </select>

        <!--<label class="select-label">Choose your Dinosaur:</label>-->
        <select class="cs-select cs-skin-rotate" style="margin-left: 10px;">
            <option value="1">ISBN</option>
            <option value="2">Velociraptor</option>
            <option value="3">Spinosaurus</option>
            <option value="4">Archaeopteryx</option>
            <option value="5">Apatosaurus</option>
        </select>

        <!--<label class="select-label">Choose your Dinosaur:</label>-->
        <select class="cs-select cs-skin-rotate" style="margin-left: 10px;">
            <option value="1">入库时间</option>
            <option value="2">Velociraptor</option>
            <option value="3">Spinosaurus</option>
            <option value="4">Archaeopteryx</option>
            <option value="5">Apatosaurus</option>
        </select>
        <div><a href="bianli.html"><input type="submit" value="submit" style="margin-bottom:30px;background-color: #757575;width: 104px;height: 40px;color: #FFF;border: none;border-radius: 5px;z-index: 100;"></a></div>
    </section>
</div><!-- /container -->
<script src="manager_in_js/classie.js"></script>
<script src="manager_in_js/selectFx.js"></script>
<script>
    (function() {
        [].slice.call( document.querySelectorAll( 'select.cs-select' ) ).forEach( function(el) {
            new SelectFx(el);
        } );
    })();
</script>
</body>
</html>