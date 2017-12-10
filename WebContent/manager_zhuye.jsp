<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<jsp:useBean id="loginUser" class="com.po.Users" scope="page"/>
<jsp:useBean id="userDAO" class="com.dao.UsersDAO" scope="page"/>
<jsp:setProperty property="*" name="loginUser"/>
<%@ page
	import="dao.ItemsDAO,java.util.ArrayList,entity.Items,entity.Borrow,entity.Reader"%>
<%@ page import="java.util.*,java.text.*"%>
<!doctype html>
<html lang="zh">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>管理员主页</title>
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,800,700|Merriweather:400,700' rel='stylesheet' type='text/css'>
	<link rel="stylesheet" href="student_zhuye_css/reset.css"> <!-- CSS reset -->
	<link rel="stylesheet" type="text/css" href="student_zhuye_css/default.css">
    <link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.3.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="student_zhuye_css/style.css"> <!-- Resource style -->
	<script src="student_zhuye_js/modernizr.js"></script> <!-- Modernizr -->
</head>
<body>
	<main>
		<header class="htmleaf-header">
			<h1 style="font-size: 60px;">管理员主页<span>A Page For Manager</span></h1>
			<div class="htmleaf-links">
				<a class="htmleaf-icon" href="index.jsp" title="返回主页面" target="_blank">
                	<i class="fa fa-home fa-fw fa-2x" style="transform: translate(-25px,0px)"></i><span> jQuery之家</span>
            	</a>
				<a class="htmleaf-icon" href="login.jsp" title="返回登录界面" target="_blank">
                	<i class="fa fa-arrow-circle-o-right fa-fw fa-2x" style="transform: translate(-5px,0px)"></i><span> 返回下载页</span>
            	</a>
			</div>
			</header>
	</main>
	<a href="#cd-nav" class="cd-nav-trigger">Menu 
		<span class="cd-nav-icon"></span>

		<svg x="0px" y="0px" width="54px" height="54px" viewBox="0 0 54 54">
			<circle fill="transparent" stroke="#656e79" stroke-width="1" cx="27" cy="27" r="25" stroke-dasharray="157 157" stroke-dashoffset="157"></circle>
		</svg>
	</a>
	
	<div id="cd-nav" class="cd-nav">
		<div class="cd-navigation-wrapper">
			<div class="cd-half-block">
				<h2>Navigation</h2>

				<nav>
					<ul class="cd-primary-nav">
						<li><a href="manager_in.jsp">图书入库</a></li>
						<li><a href="manager_out.jsp">图书出库</a></li>
						<li><a href="reader_in.jsp">添加读者</a></li>
						<li><a href="manager_readerlist.jsp">读者管理</a></li>
					</ul>
				</nav>
			</div><!-- .cd-half-block -->
			
			<div class="cd-half-block">
				<address>
					<ul class="cd-contact-info">
						<li>图书管理员</li>
						<li>administration</li>
						<li>
							<span>柴名扬</span>
							<span>段&nbsp;&nbsp;&nbsp;婕</span>
							<span>赵逸飞</span>
							<span>陈艺莎</span>
							<span>章耘天</span>
						</li>
					</ul>
				</address>
			</div> <!-- .cd-half-block -->
		</div> <!-- .cd-navigation-wrapper -->
	</div> <!-- .cd-nav -->
	
	<script src="student_zhuye_js/jquery-2.1.1.js"></script>
	<script src="student_zhuye_js/main.js"></script> <!-- Resource jQuery -->
</body>
</html>