<%@ page language="java" import="java.util.*,dao.*,entity.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'masterArticle.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style type="text/css">
	
	.div1{
		background:url(image/topimg.jpg);
	}
	</style>
  </head>
  
  <body style="width:100%;height:1000px;">
				<table>
		    	<%
		    		request.setCharacterEncoding("utf-8");
		    		ArticleDao ad=new ArticleDao(); 
		    	    Collection<Article> c1=ad.QueryAll();
		    	    Iterator<Article> it=c1.iterator();//获取集合从c1的迭代器
		    	    int id=1;
		    	    while(it.hasNext()){
		    	    
		    	    	Article article=it.next();
		    	%>
		    		<tr><td>▲<%=article.getArticle_title()%></td></tr>
		    		<tr><td><%=article.getArticle_content()%></td></tr>
		    		<tr><td><a href="readIt.jsp?rid=<%=id++%>" style="float:left">阅读全文</a>阅读次数：<%=article.getArticle_count()%></td></tr>
		    	 <%
		    		}
		    	 %>
    			</table>
  </body>
</html>
