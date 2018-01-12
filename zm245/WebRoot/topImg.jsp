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
	.aa a{
		float:right;
		margin-right:36px;
		color:black;
	}
	</style>
  </head>
  
  <body>
  欢迎<%=request.getParameter("userName")%>，
  <%
  	Cookie[] cookies=request.getCookies();
  	Cookie cookie_response=null;
  	String t=new Date().toString();
  	if(cookies==null){
  		cookie_response=new Cookie("AccessTime","");
  		out.println("您第一次访问时间为："+t);
  		cookie_response.setValue(t);
  		response.addCookie(cookie_response);
  	}
  	else{
  		cookie_response=cookies[0];
  		out.println("本次访问时间为："+t+"<br>");
  		out.println("上一次访问时间为："+cookie_response.getValue());
  		cookie_response.setValue(t);
  		response.addCookie(cookie_response);
  	}
  	
  	
   %>
   <a href="Copy of index.jsp">退出博客</a>
   <div class="aa">
    <a href="index.jsp">博客首页</a>&nbsp;&nbsp;<a href="allArticle.jsp?id=1">我的文章</a>&nbsp;&nbsp;<a href="masterPhoto.jsp?id=2">我的相册</a>&nbsp;&nbsp;<a href="allViews.jsp?id=3">我的留言</a>
   </div>
  
  </body>
</html>
