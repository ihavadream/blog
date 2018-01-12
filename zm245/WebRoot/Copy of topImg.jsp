<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'topImg.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">
	a{
		float:right;
		margin-right:36px;
		color:black;
	}
	</style>
  </head>
  
  <body>
   <a href="Copy of index.jsp">博客首页</a>&nbsp;&nbsp;<a href="Copy of masterArticle.jsp?id=1">我的文章</a>&nbsp;&nbsp;<a href="Copy of masterPhoto.jsp?id=2">我的相册</a>&nbsp;&nbsp;<a href="login.jsp?id=3">我的留言</a>
  </body>
</html>
