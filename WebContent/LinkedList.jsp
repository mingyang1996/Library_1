<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="java.util.*,java.text.*,lianbiao.MyLink"%>
<%@ page import="dao.ItemsDAO,java.util.ArrayList,entity.Items,entity.Reader"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
	<%
		MyLink linklist = new MyLink();

		ItemsDAO itemsDao = new ItemsDAO();
		ArrayList<Reader> list = itemsDao.getreaderinfo();
		if (list != null && list.size() > 0) {
			for (int i = 0; i < list.size(); i++) {
				Reader item = list.get(i);
				linklist.addNode(item.getIdNumber());
				//System.out.println("linkLength:" + linklist.length());
				//System.out.println("head.data:" + linklist.head.data);
				//linklist.deleteNode(4);
				//System.out.println("After deleteNode(4):");
				//linklist.printList();
			}
			System.out.println("linkLength:" + linklist.length());
			 linklist.printList();
			linklist.deleteNode(4); //删除第wu个节点
			linklist.printList();
		}

	%>
	读者数量：<%=linklist.length() %>
	<%-- <%=linklist.printList() %> --%>

	
</body>
</html>