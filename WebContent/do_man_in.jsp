<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=utf-8"%>

<%@ page import="dao.ItemsDAO,java.util.ArrayList,entity.Items"%>
<%
	String name="",author="",ISBN="",bookcase="",press="",intime="",category="";
	float price;
	int number;
	request.setCharacterEncoding("utf-8");
	name = request.getParameter("book_name");
	author = request.getParameter("book_author");
	ISBN = request.getParameter("book_ISBN");
	bookcase = request.getParameter("book_case");
	press = request.getParameter("book_press");
	intime = request.getParameter("book_intime");
	price = Float.parseFloat(request.getParameter("book_price"));
	category= request.getParameter("book_category");
	number = Integer.parseInt(request.getParameter("book_number"));
	ItemsDAO itemsDao = new ItemsDAO();
	itemsDao.getBookIn(price,name,author,ISBN,bookcase,press,intime,category,number);
	//用内置对象request得到入库图书的信息后，用类连接数据库
%>
<!doctype html>
<html lang="zh" class="no-js">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="manager_in_css/reset.css"> <!-- CSS reset -->
    <link rel="stylesheet" href="manager_in_css/style.css"> <!-- Resource style -->
    <script src="manager_in_js/modernizr.js"></script> <!-- Modernizr -->

    <title>入库成功</title>
</head>
<main>
<body class="cd-about">
    <div class="cd-about cd-main-content" style="background-color: #283040;">
        <div style="background-color: #283040;">
            <div style="FONT-SIZE: 50pt; WIDTH: 100%;margin-top: 180px; margin-bottom:40px;COLOR: #e6e6e6; LINE-HEIGHT: 150%; FONT-FAMILY: 华文行楷">入库成功！</div>
            <a class="cd-btn" href=manager_zhuye.jsp style="  display: inline-block;
  padding: 1.4em 1.6em;
  margin-bottom: 2em;
  border-radius: 50em;
  background-color: #245572;
  color: #ffffff;
  font-weight: bold;
  font-size: 1.3rem;
  letter-spacing: 1px;
  text-transform: uppercase;
  box-shadow: 0 1px 4px rgba(0, 0, 0, 0.1);">&#8592; 返回管理员界面</a>
        </div>
    </div>
<div class="cd-cover-layer"></div>
<div class="cd-loading-bar"></div>
<script src="manager_in_js/jquery-2.1.1.js"></script>
<script src="manager_in_js/main.js"></script> <!-- Resource jQuery -->
</body>
</main>
</html>