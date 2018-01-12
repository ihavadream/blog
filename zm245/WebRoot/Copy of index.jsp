<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style type="text/css">
	
	
	
	.div4{
		background:url(image/top.jpg);
	}
	
	</style>
  </head>

<body style="width:100%;height:1000px;">

	<div style="width:100%;height:300px;" class="div4">
		<jsp:include page="Copy of topImg.jsp"></jsp:include>
	</div>
	<div style="width:100%;height:680px;" class="div2">
		<div class="div2.1" style="width:30%;height:300px;border:solid 1px;float:left">
			<jsp:include page="Copy of masterInfo.jsp"></jsp:include>
		</div>
		<div class="div2.1" style="width:68%;height:676px;border:solid 1px;float:right">
			<jsp:include page="Copy of masterArticle.jsp"></jsp:include>
		</div>
		<div class="div2.1" style="width:30%;height:373px;border:solid 1px;float:left">
			<jsp:include page="Copy of masterViews.jsp"></jsp:include>
		</div>
	</div>
	<div style="width:100%;height:20px;border:solid 1px" class="div3">
		<jsp:include page="footImg.jsp"></jsp:include>
	</div>
</body>
</html>
