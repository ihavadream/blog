<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'article.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">
	.div2{
		text-align:center;
	}
</style>
  </head>
  
  <body>
<h4 align="center">编辑文章</h4> <br>
    <form action="updateArticle.jsp" method="post">
文章标题<input type="text" name="article_title" style="width:46%"/><br>
文章内容<textarea rows="30" cols="80%" name="article_content"></textarea><br>
    	<div class="div2"><input type="submit" value="保存" /><input type="reset" value="放弃" /></div>
    	
    </form>
  </body>
</html>
