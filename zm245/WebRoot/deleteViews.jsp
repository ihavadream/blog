<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="utf-8"%>
<%
	int vid=Integer.parseInt(request.getParameter("vvid"));
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/blog","root","");
	String sql="delete from tb_notel where id=?";
	PreparedStatement pst=con.prepareStatement(sql);
	pst.setInt(1,vid);
	pst.execute();
	pst.close();
	con.close();
	response.sendRedirect("allViews.jsp");
%>
