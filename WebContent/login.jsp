<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%
   String path = request.getContextPath();
   String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!doctype html>
<html lang="zh">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>login</title>
    <link rel="stylesheet" type="text/css" href="login_new_css/normalize.css" />
    <link rel="stylesheet" type="text/css" href="login_new_css/default.css">
    <link rel='stylesheet prefetch' href='http://fonts.useso.com/css?family=Open+Sans:600'>
    <link rel="stylesheet" type="text/css" href="login_new_css/styles.css">
</head>

<body>
<div class="htmleaf-container">
    <header class="htmleaf-header">
        <div class="htmleaf-links">
            <a class="htmleaf-icon icon-htmleaf-home-outline" href="index.jsp" title="jQuery之家" target="_blank"><span> jQuery之家</span></a>
            <a class="htmleaf-icon icon-htmleaf-arrow-forward-outline" href="index.jsp" title="返回下载页" target="_blank"><span> 返回下载页</span></a>
        </div>
    </header>
    <div class="login-wrap">
        <div class="login-html">
            <input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab">Sign In</label>
            <input id="tab-2" type="radio" name="tab" class="sign-up"><label for="tab-2" class="tab">Sign Up</label>
            <div class="login-form">
            	
                <div class="sign-in-htm">
                <form action="dologin.jsp" method="post">
                    <div class="group">
                        <label for="user" class="label">用户名</label>
                        <input name="username" id="user" type="text" class="input" value="">
                    </div>
                    <div class="group">
                        <label for="pass" class="label">密码</label>
                        <input id="pass" type="password" name="password" class="input" data-type="password" value="">
                    </div>
                    <div class="group">
                        <input id="check" type="checkbox" class="check" checked>
                        <label for="check"><span class="icon"></span> Keep me Signed in</label>
                    </div>
                    <div class="group">
                        <input type="submit" class="button" value="Sign In">
                    </div>
                    <div class="hr"></div>
                    <div class="foot-lnk">
                        <a href="#forgot">Forgot Password?</a>
                    </div>
                </form>
                </div>
                <div class="sign-up-htm">
                <form action="do_register.jsp" method="post">
                    <div class="group">
                        <label for="user" class="label">读者姓名</label>
                        <input name="reader_id" id="user" type="text" class="input" value="">
                    </div>
                    <div class="group">
                        <label for="pass" class="label">密码</label>
                        <input name="reader_password" id="pass" type="password" class="input" value="">
                    </div>
                    <div class="group">
                        <label for="pass" class="label">读者类型</label>
                        <input name="reader_type" id="pass" type="text" class="input" value="">
                    </div>
                    <div class="group">
                        <label for="pass" class="label">证件号码</label>
                        <input name="reader_IDnumber" id="pass" type="text" class="input" value="">
                    </div>
                    <div class="group">
                        <label for="pass" class="label">读者电话</label>
                        <input name="reader_phone" id="pass" type="text" class="input" value="">
                    </div>
                    <div class="group">
                        <input type="submit" class="button" value="Sign Up">
                    </div>
                </form>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>