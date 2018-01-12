<%@ page language="java" import="java.util.*,util.*,java.sql.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'masterViews.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  -------------------最近留言--------------------
  <table>
  
    <%
   	 	request.setCharacterEncoding("utf-8");
    	Connection con=JdbcUtil.getConnection();
    	Statement st=con.createStatement();
    	ResultSet rst=st.executeQuery("select * from tb_notel");
    	while(rst.next()){
    		String author=rst.getString("author");
    		String content=rst.getString("content");
    		String sendtime=rst.getString("sendtime");
    		
    %>
	     <tr><td>作者：<%=rst.getString("author") %></td></tr>
	     <tr><td>留言：<%=rst.getString("content") %></td></tr>
	     <tr><td>添加时间：<%=rst.getString("sendtime") %></td></tr>
    
    <%
    	}
    	rst.close();
    	st.close();
    	JdbcUtil.close(con);
     %>
     
     
 </table>
  </body>
</html>
