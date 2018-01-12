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
		background:url(image/topimg.jpg);
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
			<table>

		    	<%
		    		request.setCharacterEncoding("utf-8");
		    		int id=Integer.parseInt(request.getParameter("rid"));
		    	    
		    	    Connection con=JdbcUtil.getConnection();
		    	    String sql="select * from tb_article where id='"+id+"'";
					Statement st=con.createStatement();
					ResultSet rst=st.executeQuery(sql);
					while(rst.next()){
						rst.getString("article_title");
						rst.getString("article_content");
						rst.getString("article_count");
				%>
						<tr><td>▲<%=rst.getString("article_title")%></td></tr>
			    		<tr><td><%=rst.getString("article_content")%></td></tr>
			    		<tr><td>阅读次数：<%=rst.getString("article_count")%></td></tr>
				<%
						}
						rst.close();
						st.close();
						JdbcUtil.close(con);
				%>
				<%
					int n=0;
					if(application.getAttribute("num")==null) n=1;
					else{
						String str=application.getAttribute("num").toString();
						n=Integer.parseInt(str)+1;
					}
					application.setAttribute("num", n);
					
				 %>
		    		
		    </table>	
		    
		    <form action="commit of readIt.jsp" method="post">
			    <table>	
			    <hr>
			    	<tr><td colspan="2">添加新留言</td></tr>
			    	<tr><td>作者：<input type="text" name="author"/></td><td>
			    	<tr><td>内容：</td><td><textarea name="content" cols="30" rows="6"></textarea></td></tr>
			    	<tr><td cols="2"><input type="submit" value="添加"/><input type="reset" value="重置"/></td></tr>
			    </table>
		    </form>	
		    <hr>
		    <table>
		    	<%
		    		request.setCharacterEncoding("utf-8");
		    		ViewDao ad=new ViewDao(); 
		    	    Collection<Views> c1=ad.QueryAll();
		    	    Iterator<Views> it=c1.iterator();//获取集合从c1的迭代器
		    	    while(it.hasNext()){
		    	    	Views views=it.next();
		    	%>
		    		<tr><td>▶作者：<%=views.getAuthor()%></td></tr>
		    		<tr><td>内容：<%=views.getContent()%></td></tr>
		    		<tr><td>发表时间：<%=views.getSendtime()%></td>
		    	 <%
		    		}
		    	 %>
    			</table>
		    
		    		
		    	 
    			
		</div>
		<div class="div2.1" style="width:30%;height:373px;border:solid 1px;float:left">
			<jsp:include page="Copy of masterViews.jsp"></jsp:include>
		</div>
	</div>
				
  </body>
</html>
