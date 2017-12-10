<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="dao.ItemsDAO,java.util.ArrayList,entity.Items"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Student</title>
    <link href="css/index2.css" rel="stylesheet" type="text/css">
    <script src="js/jquery.min.js"></script>
    <script src="js/index.js"></script>
</head>
<body>
	<div id=backGround></div>

    <div id="input_book">
    <form action="doindex_stu.jsp" method="post"> 
        <div style="FONT-SIZE: 80pt; WIDTH: 100%; COLOR: #e6e6e6; LINE-HEIGHT: 150%; FONT-FAMILY: 华文行楷">学生检索</div>
        <div class="message">
            <select class="choose" name="search_type">
                <option>请选择类别</option>
                <option value ="模糊查询">模糊查询</option>
                <option value ="author">作者</option>
                <option value ="图书类别">图书类别</option>
            </select>
            <input class="inp" type="text" autocomplete="on" name="search" value="" placeholder="&nbsp检索内容">
        </div>
        <input class="but" type="submit" value="检索" style="margin-bottom:8px; opacity: 0.7;">
        <a href="student_zhuye.jsp"><input class="but" type="button" value="学生主页" style="margin-bottom:8px; opacity: 0.7;"></a>
    </form>
    </div>
</body>
</html>