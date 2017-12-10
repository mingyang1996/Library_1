<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="dao.ItemsDAO,java.util.ArrayList,entity.Items,entity.Borrow"%>
<%@ page import="java.util.*,java.text.*"%>
<%
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	Date time = new Date();
	Calendar calendar = new GregorianCalendar();
	calendar.setTime(time);
	calendar.add(Calendar.DATE, 30);//把日期往后增加一天.正数往后推,负数往前推 
	Date now;
	now = calendar.getTime();

	String time1 = sdf.format(time);
	System.out.println(time1);
	String time2 = sdf.format(now);
	System.out.println(time2);
	
	ItemsDAO itemDao = new ItemsDAO();
	itemDao.UpdateBorrow(Integer.parseInt(request.getParameter("book_listId")),time1, time2);
	
	request.getRequestDispatcher("stu_renewlist.jsp").forward(request, response);
%>

