<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'login.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">
	body{
		background:url(image/login2.jpg);
	}
	.div4{
		float:right;
		margin-top:150px;
		margin-right:498px;
		background:url();
		width:320px;
		height:420px;
	}
	.div5{
		text-align:center;
		margin-top:130px;
	}
</style>
  </head>
  
  <body>
  <div class="div4">

    <form action="testlogin.jsp" method="post">
    <div class="div5">
      	    用户登录<br><br>
 用户名<input type="text" name="userName" /><br><br>
    密码&nbsp;&nbsp;<input type="password" name="userPwd" /><br><br>
    <input type="submit" value="登陆" />
    </div>

    </form>
  </div>

  </body>
</html>
