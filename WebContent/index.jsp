<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="dao.ItemsDAO,java.util.ArrayList,entity.Items"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>This is my library</title>
    <link href="css/index.css" rel="stylesheet" type="text/css">
    <script src="js/jquery.min.js"></script>
    <script src="js/index.js"></script>
</head>
<body>
	<div id=backGround></div>

    <div id="input_book">
    <form action="doindex.jsp" method="post"> 
        <div style="FONT-SIZE: 80pt; WIDTH: 100%; COLOR: #e6e6e6; LINE-HEIGHT: 150%; FONT-FAMILY: 华文行楷">上海大学图书馆</div>
        <div class="message">
            <select class="choose" name="search_type">
                <option>请选择类别</option>
                <option value ="模糊查询">模糊查询</option>
                <option value ="author">作者</option>
                <option value ="图书类别">图书类别</option>
            </select>
            <input class="inp" type="text" autocomplete="on" name="search" value="" placeholder="&nbsp检索内容">
        </div>
        <input class="but" type="submit" value="检索" style="margin-bottom:8px; opacity: 0.7; cursor:pointer;">
        <a href="loading.jsp"><input class="but" type="button" value="登录" style="margin-bottom:8px; opacity: 0.7; cursor:pointer;"></a>
    </form>
    </div>
    <div id="bottom">&nbsp;高级检索：<a href="http://www.shu.edu.cn/">上海大学&nbsp;&nbsp;</a><a href="http://www.lib.shu.edu.cn/">上海大学图书馆&nbsp;&nbsp;</a><a href="http://scie.shu.edu.cn/Default.aspx">上海大学通信与信息工程学院&nbsp;&nbsp;</a><a href="http://www.nlc.cn/">中国国家图书馆</a></div>
</body>
</html>