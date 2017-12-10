<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%
   String path = request.getContextPath();
   String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<jsp:useBean id="loginUser" class="com.po.Users" scope="page"/>
<jsp:useBean id="userDAO" class="com.dao.UsersDAO" scope="page"/>
<jsp:setProperty property="*" name="loginUser"/>
<%@ page
	import="dao.ItemsDAO,java.util.ArrayList,entity.Items,entity.Borrow"%>
<%@ page import="java.util.*,java.text.*"%>
<%
	ItemsDAO itemDao = new ItemsDAO();

	System.out.println("id");

	String toUser = "";
	int currentnumber;   //当前借书数目
	toUser = session.getAttribute("loginUser").toString();
	System.out.println(toUser);
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	Date d = new Date();
	Calendar calendar = new GregorianCalendar();
	calendar.setTime(d);
	calendar.add(Calendar.DATE, 30);//把日期往后增加一天.正数往后推,负数往前推 
	Date r;
	r = calendar.getTime();

	String borrow_time = sdf.format(d);
	System.out.println(borrow_time);
	String return_time = sdf.format(r);
	System.out.println(return_time);
	
	currentnumber=itemDao.getcurrentnumber(toUser);
	if(currentnumber<4)
	{
	itemDao.InsertBorrow(Integer.parseInt(request.getParameter("id")), toUser, borrow_time, return_time);
	itemDao.updateCurrentumber(toUser,1);
	itemDao.BorrowBooks(Integer.parseInt(request.getParameter("id")));
	}
	else
		//System.out.println("结束失败");
	//request.getRequestDispatcher("borrow_failure_again.jsp").forward(request, response);
	response.sendRedirect("borrow_failure_again.jsp");
%>

<!doctype html>
<html lang="zh" class="no-js">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="manager_in_css/reset.css"> <!-- CSS reset -->
    <link rel="stylesheet" href="manager_in_css/style.css"> <!-- Resource style -->
    <script src="manager_in_js/modernizr.js"></script> <!-- Modernizr -->

    <title>借书成功</title>
</head>
<main>
<body class="cd-about">
    <div class="cd-about cd-main-content" style="background-color: #283040;">
        <div style="background-color: #283040;">
            <div style="FONT-SIZE: 50pt; WIDTH: 100%;margin-top: 180px; margin-bottom:40px;COLOR: #e6e6e6; LINE-HEIGHT: 150%; FONT-FAMILY: 华文行楷">借书成功！</div>
            <a class="cd-btn" href=student_search.jsp style="  display: inline-block;
  padding: 1.4em 1.6em;
  margin-bottom: 2em;
  border-radius: 50em;
  background-color: #245572;
  color: #ffffff;
  font-weight: bold;
  font-size: 1.3rem;
  letter-spacing: 1px;
  text-transform: uppercase;
  box-shadow: 0 1px 4px rgba(0, 0, 0, 0.1);">&#8592; 返回学生检索</a>
        </div>
    </div>
<div class="cd-cover-layer"></div>
<div class="cd-loading-bar"></div>
<script src="manager_in_js/jquery-2.1.1.js"></script>
<script src="manager_in_js/main.js"></script> <!-- Resource jQuery -->
</body>
</main>
</html>