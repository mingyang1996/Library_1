<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=utf-8"%>

<%@ page import="dao.ItemsDAO,java.util.ArrayList,entity.Items"%>

<!DOCTYPE html>
<html lang="en" class="no-js">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>bianli_idle</title>
<meta name="description" content="Animated Books with CSS 3D Transforms" />
<meta name="keywords"
	content="book, 3d, interactive, animated, 3d transform, css, web design" />
<link rel="stylesheet" type="text/css" href="bianli_css/normalize.css" />
<link rel="stylesheet" type="text/css" href="bianli_css/demo.css" />
<link rel="stylesheet" type="text/css" href="bianli_css/book.css" />
<script src="bianli_js/modernizr.custom.js"></script>
</head>
<body>
	<div class="container">
		<header>
		<h1>
			图书检索结果<a href="index.jsp"><span> Return to the Index</span></a>
		</h1>
		</header>
		<div class="component">

			<ul class="align">
				<%
					String infor = "";
					//String category="";
					String search_type = "";
					request.setCharacterEncoding("utf-8");
					infor = request.getParameter("search");
					search_type = String.valueOf(request.getParameter("search_type"));
					//category = request.getParameter("category");
					//System.out.println(infor);
					//System.out.println(search_type);
				%>

				<%
					if (search_type.equals("author")) {
						ItemsDAO itemsDao = new ItemsDAO();
						ArrayList<Items> list = itemsDao.getItemsByauthor(infor);
						if (list != null && list.size() > 0) {
							for (int i = 0; i < list.size(); i++) {
								Items item = list.get(i);
				%>
				<li><figure class='book'> <!-- Front -->

					<ul class='hardcover_front'>
						<li>
							<img src="img/cover.jpg" alt="" width="100%" height="100%">
						</li>
						<li></li>
					</ul>

					<!-- Pages -->

					<ul class='page'>
						<li></li>
						<li style="text-align:left;">
                       		<br>
                            ISBN：<%=item.getISBN() %><br>
                                                                             所在书架：<%=item.getBook_case() %><br>
                                                                            入库时间：<%=item.getBook_intime() %><br>
                                                                            出版社：<%=item.getPress() %><br>
                                                                            类别：<%=item.getCategory() %><br>
                                                                            剩余数量：<%=item.getNumber() %><br>
                        </li>
						<li></li>
						<li></li>
						<li></li>
					</ul>

					<!-- Back -->

					<ul class='hardcover_back'>
						<li></li>
						<li></li>
					</ul>
					<ul class='book_spine'>
						<li></li>
						<li></li>
					</ul>
					<figcaption>
					<h1><%=item.getBook_name() %></h1>
                        <span><%=item.getBook_author() %></span>
                        <a class="btn" href="login.jsp">Login in If you Borrow!</a>
					</figcaption> </figure>
				</li>
				<%
					}
						}
					} else
				%>
				<%
					if (search_type.equals("模糊查询")) {
						System.out.println(search_type);
						System.out.println(infor);
						ItemsDAO itemsDao = new ItemsDAO();
						ArrayList<Items> list = itemsDao.getItemsById(infor);
						if (list != null && list.size() > 0) {
							for (int i = 0; i < list.size(); i++) {
								Items item = list.get(i);
				%>
				<li><figure class='book'> <!-- Front -->

					<ul class='hardcover_front'>
						<li>
							<img src="img/cover.jpg" alt="" width="100%" height="100%">
						</li>
						<li></li>
					</ul>

					<!-- Pages -->

					<ul class='page'>
						<li></li>
						<li style="text-align:left;">
                       		<br>
                            ISBN：<%=item.getISBN() %><br>
                                                                             所在书架：<%=item.getBook_case() %><br>
                                                                            入库时间：<%=item.getBook_intime() %><br>
                                                                            出版社：<%=item.getPress() %><br>
                                                                            类别：<%=item.getCategory() %><br>
                                                                            剩余数量：<%=item.getNumber() %><br>
                        </li>
						<li></li>
						<li></li>
						<li></li>
					</ul>

					<!-- Back -->

					<ul class='hardcover_back'>
						<li></li>
						<li></li>
					</ul>
					<ul class='book_spine'>
						<li></li>
						<li></li>
					</ul>
					<figcaption>
					<h1><%=item.getBook_name() %></h1>
                        <span><%=item.getBook_author() %></span>
                        <a class="btn" href="login.jsp">Login in If you Borrow!</a>
					</figcaption> </figure>
				</li>
				<%
					}
						}
					} else
				%>

				<%
					if (search_type.equals("图书类别")) {
						ItemsDAO itemsDao = new ItemsDAO();
						ArrayList<Items> list = itemsDao.getItemsBycategory(infor);
						if (list != null && list.size() > 0) {
							for (int i = 0; i < list.size(); i++) {
								Items item = list.get(i);
				%>
				<li><figure class='book'> <!-- Front -->

					<ul class='hardcover_front'>
						<li>
							<img src="img/cover.jpg" alt="" width="100%" height="100%">
						</li>
						<li></li>
					</ul>

					<!-- Pages -->

					<ul class='page'>
						<li></li>
						<li style="text-align:left;">
                       		<br>
                            ISBN：<%=item.getISBN() %><br>
                                                                             所在书架：<%=item.getBook_case() %><br>
                                                                            入库时间：<%=item.getBook_intime() %><br>
                                                                            出版社：<%=item.getPress() %><br>
                                                                            类别：<%=item.getCategory() %><br>
                                                                            剩余数量：<%=item.getNumber() %><br>
                        </li>
						<li></li>
						<li></li>
						<li></li>
					</ul>

					<!-- Back -->

					<ul class='hardcover_back'>
						<li></li>
						<li></li>
					</ul>
					<ul class='book_spine'>
						<li></li>
						<li></li>
					</ul>
					<figcaption>
					<h1><%=item.getBook_name() %></h1>
                        <span><%=item.getBook_author() %></span>
                        <a class="btn" href="login.jsp">Login in If you Borrow!</a>
					</figcaption> </figure>
				</li>

				<%
					}
						}
					}
				%>

			</ul>
		</div>
	</div>
	<!-- /container -->
</body>
</html>

