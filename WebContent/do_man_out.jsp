<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="dao.ItemsDAO,java.util.ArrayList,entity.Items,entity.Reader"%>
<%@ page import="java.util.*,java.text.*,lianbiao.MyLink"%>
<%
	ItemsDAO itemDao = new ItemsDAO();
	itemDao.DeleteBooks(Integer.parseInt(request.getParameter("id"))); 
/* 	MyLink linklist = new MyLink();
	ItemsDAO itemsDao = new ItemsDAO();
	ArrayList<Items> list = itemsDao.getAllBooks();
	if (list != null && list.size() > 0) {
		for (int i = 0; i < list.size(); i++) {
			Items item = list.get(i);
			linklist.addNode(item.getBook_id());
			//System.out.println("linkLength:" + linklist.length());
			//System.out.println("head.data:" + linklist.head.data);
			//linklist.deleteNode(4);
			//System.out.println("After deleteNode(4):");
			//linklist.printList();
		}
		System.out.println("linkLength:" + linklist.length());
		 linklist.printList();

	} */
%>
<!doctype html>
<html lang="zh" class="no-js">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="manager_in_css/reset.css"> <!-- CSS reset -->
    <link rel="stylesheet" href="manager_in_css/style.css"> <!-- Resource style -->
    <script src="manager_in_js/modernizr.js"></script> <!-- Modernizr -->

    <title>出库成功</title>
</head>
<main>
<body class="cd-about">
    <div class="cd-about cd-main-content" style="background-color: #283040;">
        <div style="background-color: #283040;">
            <div style="FONT-SIZE: 50pt; WIDTH: 100%;margin-top: 180px; margin-bottom:40px;COLOR: #e6e6e6; LINE-HEIGHT: 150%; FONT-FAMILY: 华文行楷">出库成功！</div>
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