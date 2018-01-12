<%@page import="java.sql.Date"%>
<%@ page language="java" import="java.util.*,dao.*,entity.*,java.sql.*,util.*" pageEncoding="utf-8"%>
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
    <div style="width:100%;height:300px;" class="div1">
		<jsp:include page="Copy of topImg.jsp"></jsp:include>
	</div>
	<div style="width:100%;height:680px;" class="div2">
		<div class="div2.1" style="width:30%;height:300px;border:solid 1px;float:left">
			<jsp:include page="Copy of masterInfo.jsp"></jsp:include>
		</div>
		<div class="div2.1" style="width:68%;height:676px;border:solid 1px;float:right">
		
			<%
				request.setCharacterEncoding("utf-8");
				//String stime=new Date(session.getCreationTime()).toString();
				request.setCharacterEncoding("utf-8");
				boolean flag=false;
				String author=request.getParameter("author");
				String content=request.getParameter("content");
				String sendtime=new Date(session.getCreationTime()).toString();
				
				Connection con=JdbcUtil.getConnection();
				String sql="insert into tb_notel (author,content,sendtime) values (?,?,?)";
				PreparedStatement pst=con.prepareStatement(sql);
				pst.setString(1, author);
				pst.setString(2, content);
				pst.setString(3, sendtime);
				pst.executeUpdate();
				pst.close();
				JdbcUtil.close(con);
				flag=true;
				response.setHeader("refresh", "2;URL=Copy of index.jsp");
			 
		    	if(flag){
		    %>
		    		留言添加成功,两秒后跳回文章页。。。。
		    <%
		    	 }else{
		    %>
		    		留言添加失败，两秒后跳回文章页。。。。
		    <%
		    	}
		     %>	
		    	
		    		
		    	 
    			
		</div>
		<div class="div2.1" style="width:30%;height:373px;border:solid 1px;float:left">
			<jsp:include page="Copy of masterViews.jsp"></jsp:include>
		</div>
	</div>
				
  </body>
</html>
