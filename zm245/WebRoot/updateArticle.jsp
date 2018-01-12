<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="utf-8"%>
<%
			//int id=Integer.parseInt(request.getParameter("uid"));
			String article_title=request.getParameter("article_title");
			String article_content=request.getParameter("article_content");
			if(article_title!=null&&article_content!=null&&article_title.equals("")){
				Class.forName("com.mysql.jdbc.Driver");
				Connection con=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/blog","root","");
				Statement st=con.createStatement();
				String sql="update tb_article set article_content='"+article_content+"' where article_title='"+article_title+"'";
				st.executeUpdate(sql);
				st.close();
				con.close();
				
			}
			response.sendRedirect("allArticle.jsp");
		%>