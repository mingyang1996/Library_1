<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="dao.ItemsDAO,java.util.ArrayList,entity.Items"%>
<!doctype html>
<html lang="zh" class="no-js">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>图书入库</title>
    <link rel="stylesheet" href="manager_in_css/reset.css"> <!-- CSS reset -->
    <link rel="stylesheet" href="manager_in_css/style.css"> <!-- Resource style -->
    <link rel="stylesheet" type="text/css" href="manager_in_css/default.css">
    <link href="css/manager_in.css" rel="stylesheet" type="text/css">
    <link href="css/manager_inn.css" rel="stylesheet" type="text/css">
    <script src="manager_in_js/modernizr.js"></script> <!-- Modernizr -->
   
 </script> 
</head>
<body>
<main>
    <div class="cd-index cd-main-content">
        <div>
            <!--<h1>jQuery和CSS3通过AJAX调用切换页面过渡动画特效</h1>-->
            <div class="htmleaf-links">
                <a class="htmleaf-icon icon-htmleaf-home-outline" href="index.jsp" title="返回主页面" target="_blank"><span> jQuery之家</span></a>
                <a class="htmleaf-icon icon-htmleaf-arrow-forward-outline" href="manager_zhuye.jsp" title="返回管理员主页" target="_blank"><span> 返回下载页</span></a>
            </div>
            <br>
            <div class="form-div" style="margin-top: 20px;font-size: 17px;font-weight: bold;">
                
                <form id="reg-form" action="do_man_in.jsp" method="post">
                    <table>
                        <tr>
                            <td style="color: #6a6a6a;">书名</td>
                            <td><input name="book_name" value="" type="text" id="name" easyform="length:4-16;char-normal;real-time;" message="请输入书名" easytip="disappear:lost-focus;theme:blue;" ajax-message="书已存在!">
                            </td>
                        </tr>
                        <tr>
                            <td style="color: #6a6a6a;">作者</td>
                            <td><input name="book_author" value="" type="text" id="writer" easyform="length:6-16;" message="密码必须为6—16位" easytip="disappear:lost-focus;theme:blue;"></td>
                        </tr>
                        <tr>
                            <td style="color: #6a6a6a;">ISBN</td>
                            <td><input name="book_ISBN" value="" type="text" id="isbn" easyform="length:6-16;equal:#psw1;" message="两次密码输入要一致" easytip="disappear:lost-focus;theme:blue;"></td>
                        </tr>
                        <tr>
                            <td style="color: #6a6a6a;">所在书架</td>
                            <td><input name="book_case" value="" type="text" id="place" easyform="email;real-time;" message="Email格式要正确" easytip="disappear:lost-focus;theme:blue; "></td>
                        </tr>
                        <tr>
                            <td style="color: #6a6a6a;">入库时间</td>
                            <td><input name="book_intime" value="" type="text" id="intime" easyform="length:2-16" message="昵称必须为2—16位" easytip="disappear:lost-focus;theme:blue;"></td>
                        </tr>
                        <tr>
                            <td style="color: #6a6a6a;">出版社</td>
                            <td><input name="book_press" value="" type="text" id="press" easyform="length:2-16" message="昵称必须为2—16位" easytip="disappear:lost-focus;theme:blue;"></td>
                        </tr>
                        <tr>
                            <td style="color: #6a6a6a;">价格</td>
                            <td><input name="book_price" value="" type="text" id="price" easyform="length:2-16" message="昵称必须为2—16位" easytip="disappear:lost-focus;theme:blue;"></td>
                        </tr>
                        <tr>
                            <td style="color: #6a6a6a;">入库数量</td>
                            <td><input name="book_number" value="" type="text" id="number" easyform="length:2-16" message="昵称必须为2—16位" easytip="disappear:lost-focus;theme:blue;"></td>
                        </tr>
                    </table>

                    <div class="buttons" style="height: 60px;">
                        <p class="center" style="margin-top: 10px;">
                        	<input  value="入 库" type="submit" style="cursor: pointer;"/>
                        </p>
                    </div>

                    <br class="clear">
                </form>
            </div>

        </div>
    </div>
</main>

<div class="cd-cover-layer"></div>
<div class="cd-loading-bar"></div>


<script src="manager_in_js/jquery-2.1.1.js"></script>
<script src="manager_in_js/main.js"></script> <!-- Resource jQuery -->
</body>
</html>