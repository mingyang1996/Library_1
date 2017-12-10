<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<%@ page
	import="dao.ItemsDAO,java.util.ArrayList,entity.Items,entity.Borrow"%>
<%@ page import="java.util.*,java.text.*"%>

<!DOCTYPE html>
<html lang="zh">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>续借/归还</title>
<link
	href="http://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="reader_info_css/htmleaf-demo.css">
<link rel="stylesheet" href="reader_info_css/samples-styles.css">
<style type="text/css">
td.alt {
	background-color: #ffc;
	background-color: rgba(230, 127, 34, 0.2);
}
</style>
</head>
<body>
	<div class="htmleaf-container">
		<header class="htmleaf-header">
			<h1>
				读者信息<span>Information of Reader</span>
			</h1>
			<div class="htmleaf-links">
				<a class="htmleaf-icon icon-htmleaf-home-outline" href="index.jsp"
					title="jQuery之家" target="_blank"><span> jQuery之家</span></a> <a
					class="htmleaf-icon icon-htmleaf-arrow-forward-outline"
					href="student_zhuye.jsp" title="返回下载页" target="_blank"><span>
						返回下载页</span></a>
			</div>
		</header>
		<div class="htmleaf-content">
			<div class="input-group">
				<div class="input-group-addon">过滤条件</div>
				<input class="form-control" type="search" id="input-filter"
					size="15" placeholder="输入过滤条件"></input>
			</div>
			<br>
			<table class="">
				<thead>
					<tr>
						<th scope="col">书名</th>
						<th scope="col">借书时间</th>
						<th scope="col">还书时间</th>
						<th scope="col">续借</th>
						<th scope="col">归还</th>
					</tr>
				</thead>
				<tbody>
					<%
						String toUser = "";
						toUser = session.getAttribute("loginUser").toString();

						ItemsDAO itemsDao = new ItemsDAO();
						ArrayList<Borrow> list = itemsDao.BorrowAllBooks(toUser);
						if (list != null && list.size() > 0) {
							for (int i = 0; i < list.size(); i++) {
								Borrow item = list.get(i);
					%>
					<tr>
						<td><%=item.getBook_ID()%></td>
						<td><%=item.getBorrowTime()%></td>
						<td><%=item.getBackTime()%></td>
						<td><a href="do_renew.jsp?book_listId=<%=item.getID()%>"><input
								type="submit" value="续借" name="renew" style="cursor: pointer;" /></a></td>
						<%
							String mytext = java.net.URLEncoder.encode(item.getBook_ID(), "utf-8");
						%>
						<td><a
							href="do_return.jsp?book_listId=<%=item.getID()%>&name=<%=mytext%>"><input
								type="submit" value="归还" name="returnning"
								style="cursor: pointer;" /></a></td>


					</tr>
					<%
						}
						}
					%>
				</tbody>
			</table>
		</div>
	</div>

	<script src="http://cdn.bootcss.com/jquery/1.11.0/jquery.min.js"
		type="text/javascript"></script>
	<script>
		window.jQuery
				|| document
						.write('<script src="reader_infor_js/jquery-1.11.0.min.js"><\/script>')
	</script>
	<script src="reader_infor_js/jquery.filtertable.min.js"></script>
	<script>
		$(document).ready(function() {
			$('table').filterTable({ // apply filterTable to all tables on this page
				inputSelector : '#input-filter' // use the existing input instead of creating a new one
			});
		});
	</script>
</body>
</html>