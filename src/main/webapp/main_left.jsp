<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'main_left.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">
body {
	background-color: #E4EDF0;
}

div {
	text-align: center;
	width: 200px;
	height: 30px;
	border: 1px #4CB8A1 solid;
	margin-top: 25px;
	margin-left: 25px;
	border-radius: 10px;
}

div:hover {
	background-color: #C5E4DF;
}

a {
	font-family: "微软雅黑";
	color: #4CB8A1;
	font-size: 20px;
	outline: 0;
	border: 0;
	text-decoration: none;
}

a:hover {
	background-color: #C5E4DF;
}
</style>
</head>

<body>
	<!-- 
<div id="select_customer">
		<a href="${pageContext.request.contextPath}/findall"
			target="mycontent">查询所有客户</a>
	</div> -->
	<div id="company_introduction">
		<a href="${pageContext.request.contextPath}/Welcome.jsp"
			target="mycontent">公司简介</a>
	</div>

	<div id="add_customer">
		<a href="${pageContext.request.contextPath}/addcustomer.jsp"
			target="mycontent">添加客户</a>
	</div>
	<div id="select_customer">
		<a href="${pageContext.request.contextPath}/page" target="mycontent">分组查询客户</a>
	</div>

</body>
</html>
