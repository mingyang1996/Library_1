<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="dao.ItemsDAO,java.util.ArrayList,entity.Items,entity.Borrow"%>
<%@ page import="java.util.*,java.text.*"%>
<jsp:useBean id="loginUser" class="com.po.Users" scope="page"/>
<jsp:useBean id="userDAO" class="com.dao.UsersDAO" scope="page"/>
<jsp:setProperty property="*" name="loginUser"/>
<%
	ItemsDAO itemDao = new ItemsDAO();
	String toUser = "";
	toUser = session.getAttribute("loginUser").toString();
	itemDao.DeleteBorrow(Integer.parseInt(request.getParameter("book_listId")));   //书的编号
	//request.setCharacterEncoding("utf-8");
	System.out.println(Integer.parseInt(request.getParameter("book_listId")));
	String mytext2=java.net.URLDecoder.decode(String.valueOf(request.getParameter("name")),"utf-8");
	itemDao.DeleteUpdateBorrow(mytext2);
	itemDao.updateCurrentumber(toUser,0);
	
	request.getRequestDispatcher("stu_renewlist.jsp").forward(request, response);
%>
