<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";

	String loginUser = "";
	if (session.getAttribute("loginUser") != null) {
		loginUser = session.getAttribute("loginUser").toString();
		if ("admin".equals(loginUser)){
			request.getRequestDispatcher("manager_zhuye.jsp").forward(request, response);
		} else {
			request.getRequestDispatcher("student_search.jsp").forward(request, response);
		}
	}
%>

