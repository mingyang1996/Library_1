<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>读者管理</title>
</head>
<body>
	<form action="do_man_reader.jsp" method="post">
		读者ID：<input type="text" name="reader_id" value="" /><br>
		密码：<input type="text" name="reader_password" value="" /><br>
		读者类型：<input type="text" name="reader_type" value="" /><br>
		证件号码：<input type="text" name="reader_IDnumber" value="" /><br>
		读者电话：<input type="text" name="reader_phone" value="" /><br>
		可借图书数目：<input type="text" name="reader_allow" value="" /><br>
		<input type="submit" value="修改完成" style="cursor: pointer;"/>
	</form>
	<a href="manager.jsp">返回</a>
	
</body>
</html>