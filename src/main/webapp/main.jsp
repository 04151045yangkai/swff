<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>HomePage</title>

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
	background-image: url(img/1298545b7fe7645b84298c591eec566b.jpg);
}

div {
	font-family: "楷体";
	font-size: 30px;
	color: wheat;
	width: 100%;
	text-align: center;
	margin-top: 260px;
}

a {
	text-decoration: none;
}
</style>
</head>
<c:if test="${empty user}">
	<body>
		<div >
			您尚未登录,请先<a href="${pageContext.request.contextPath}/login.jsp">登录</a>
		</div>
	</body>
</c:if>
<c:if test="${not empty user}">
	<frameset rows="22%,*" border="5" bordercolor="#91CEC4">
		<frame noresize="noresize"
			src="${pageContext.request.contextPath}/main_top.jsp" scrolling="no" />
		<frameset cols="20%,*" border="5" bordercolor="#91CEC4">
			<frame noresize="noresize"
				src="${pageContext.request.contextPath}/main_left.jsp" />
			<frame noresize="noresize"
				src="${pageContext.request.contextPath}/Welcome.jsp"
				name="mycontent" />
		</frameset>
	</frameset>
</c:if>
</html>
