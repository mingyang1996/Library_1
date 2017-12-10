<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="dao.ItemsDAO,java.util.ArrayList,entity.Items"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>stu_web</title>
</head>
<body>
	<form action="doindex_stu.jsp" method="post">
		<input name="search" value="" /> 
		<input name="search_type" value="" /> 
		<input type="submit" value="查询" style="cursor: pointer;"/>
	</form>
	<a href="stu_renewlist.jsp">续借</a>
	<a href="stu_renewlist.jsp">归还</a>
</body>
</html>