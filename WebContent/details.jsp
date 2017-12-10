<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="dao.ItemsDAO,java.util.ArrayList,entity.Items"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>details_web</title>
</head>
<body>
	<h1>图书详情</h1>
	<hr>
	<center>
		<table width="750" height="60" cellpadding="0" cellspacing="0" border="0">
			<tr>
				<!-- 图书详情 -->
				<%
					request.setCharacterEncoding("utf-8"); 
					System.out.println(request.getParameter("book_name"));
			
					ItemsDAO itemDao = new ItemsDAO();
					Items item = itemDao.getItemsById(String.valueOf(request.getParameter("book_name")));
					if (item != null) 
					{
				%>
				<td width="50%" valign="top">
					<table>
						<tr>
							<td>ID:<%=item.getBook_id() %></td>
						</tr>
						<tr>
							<td>书名：<%=item.getBook_name() %></td>
						</tr>
						<tr>
							<td>作者：<%=item.getBook_author() %></td>
						</tr>
						<tr>
							<td>ISBN：<%=item.getISBN() %></td>
						</tr>
						<tr>
							<td>书架：<%=item.getBook_case() %></td>
						</tr>
						<tr>
							<td>入库时间：<%=item.getBook_intime() %></td>
						</tr>
						<tr>
							<td>出版社：<%=item.getPress() %></td>
						</tr>
						<tr>
							<td>价格：<%=item.getPrice() %></td>
						</tr>
					</table>
				</td>
				<%
					}
				%>
			</tr>
		</table>
	</center>
</body>
</html>

