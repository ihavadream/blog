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
		background:url(image/top.jpg);
	}
	
	</style>
  </head>
  
  <body style="width:100%;height:1000px;">
    <form action="addArticle.jsp" method="post"> 
		<div style="width:100%;height:300px;" class="div1">
			<jsp:include page="topImg.jsp"></jsp:include>
		</div>
		<div style="width:100%;height:680px;">
			<div style="width:30%;height:300px;border:solid 1px;float:left">
				<jsp:include page="masterInfo.jsp"></jsp:include>
			</div>
			<div style="width:68%;height:676px;border:solid 1px;float:right">
				<table>
		    	<%
		    		request.setCharacterEncoding("utf-8");
		    		ArticleDao ad=new ArticleDao(); 
		    	    Collection<Article> c1=ad.QueryAll();
		    	    Iterator<Article> it=c1.iterator();//获取集合从c1的迭代器
		    	    while(it.hasNext()){
		    	    	Article article=it.next();
		    	%>
		    		<tr><td>▲<%=article.getArticle_title()%></td></tr>
		    		<tr><td><%=article.getArticle_content()%></td></tr>
		    		<tr><td>阅读次数：<%=article.getArticle_count()%></td>
		    		    <td><a href='modifyArticle.jsp?uid=<%=article.getId()%>'>编辑</a></td>
		    		    <td><a href='deleteArticle.jsp?mid=<%=article.getId()%>'>删除</a></td></tr>
		    	 <%
		    		}
		    	 %>
    			</table>
			</div>
			<div style="width:30%;height:373px;border:solid 1px;float:left">
				<jsp:include page="masterViews.jsp"></jsp:include>
			</div>
		</div>
		<div style="width:100%;height:20px;border:solid 1px">
			<jsp:include page="footImg.jsp"></jsp:include>
		</div>
    	
    </form>
  </body>
</html>
