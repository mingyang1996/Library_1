<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="dao.ItemsDAO,java.util.ArrayList,entity.Items"%>

<!DOCTYPE html>
<html lang="zh">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>图书出库</title>
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
			图书出库<span>make book out of databases.</span>
		</h1>
		<div class="htmleaf-links">
			<a class="htmleaf-icon icon-htmleaf-home-outline" href="index.jsp"
				title="返回主页面" target="_blank"><span> jQuery之家</span></a> <a
				class="htmleaf-icon icon-htmleaf-arrow-forward-outline"
				href="manager_zhuye.jsp" title="返回管理员主页" target="_blank"><span>
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
						<th scope="col">数量</th>
						<th scope="col">书架</th>
						<th scope="col">出库</th>
						
					</tr>
				</thead>
				<tbody>
					<%
						ItemsDAO itemsDao = new ItemsDAO();
						ArrayList<Items> list = itemsDao.getAllBooks();
						if (list != null && list.size() > 0) {
							for (int i = 0; i < list.size(); i++) {
								Items item = list.get(i);
					%>
					<tr>
						<td><%=item.getBook_name() %></td>
						<td><%=item.getNumber() %></td>
						<td><%=item.getBook_case() %></td>
						<td><a href="do_man_out.jsp?id=<%=item.getBook_id()%>"><input
								type="submit" name="man_out" value="out"/></a></td>
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