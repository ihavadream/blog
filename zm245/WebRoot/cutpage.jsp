<%@ page language="java" import="java.util.*,java.sql.*,util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'cutpage.jsp' starting page</title>
    
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
    <%
    	int pageSize=3;
    	int pageCount;
    	int showPage;
    	Statement sql;
    	ResultSet rs;
    	
    	Connection con=JdbcUtil.getConnection();
    	sql=con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_READ_ONLY);//返回可滚动的结果集
    	rs=sql.executeQuery("select * from tb_messageinfo");
    	
    	rs.last();
    	int recordCount=rs.getRow();
    	pageCount=(recordCount%pageSize==0)?(recordCount/pageSize):(recordCount/pageSize+1);
    	String integer=request.getParameter("showPage");//获取用户想要显示的页数
    	if(integer==null){
    		integer="1";
    	}
    	try{
    		showPage=Integer.parseInt(integer);
    		}catch(NumberFormatException e){
    			showPage=1;
    	}
    	if(showPage<=1){
    		showPage=1;
    	}
    	if(showPage>=pageCount){
    		showPage=pageCount;
    	}
    	
    	int position=(showPage-1)*pageSize+1;
    	rs.absolute(position);//设置游标的位置
    	for(int i=1;i<=pageSize;i++){
    %>
    	<table>
    		<tr>
    			<th><%=rs.getString("userName") %></th>
    			<td>发表于：<%=rs.getString("datetime") %></td>
    		</tr>
    		<tr>
    			<th cols="3"><textarea><%=rs.getString("content")%></textarea></th>
    		</tr>
    	</table>
    	<br>
   	  第<%=showPage%>页(共<%=pageCount %>页)
     <br>
     <a href="ShowArticle.jsp?showPage=1">首页</a>
     <a href="ShowArticle.jsp?showPage=<%=showPage-1%>">上一页</a>
    	<%
     		for(int j=1;j<=pageCount;j++){
     	%>
     	<a href="ShowArticle.jsp?showPage=<%=j%>"><%=j %></a>
        <%		
     	    }
        %>
     	<a href="ShowArticle.jsp?showPage=<%=showPage+1%>">下一页</a>
     	<a href="ShowArticle.jsp?showPage=<%=pageCount%>">末页</a>
     	
     
    	<form action="" method="get"> 
     		跳转到第<input type="text" name="showPage" size="3"/>页
     		<input type="submit" name="submit "value="跳转"/>
     	</form>
      <%	
    		rs.next();
    	}
	    	rs.close();
			JdbcUtil.close(con);
      %>
     
     
     
     
  </body>
</html>
