<%@ page language="java" import="java.util.*,dao.*" pageEncoding="utf-8"%>
<jsp:useBean id="article" class="entity.Article">
<jsp:setProperty name="article" property="*"/>
</jsp:useBean>
<%
	ArticleDao jdbc=new ArticleDao();
	jdbc.save(article);
	response.sendRedirect("index.jsp");
%>