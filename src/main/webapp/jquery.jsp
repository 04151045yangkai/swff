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

<title>My JSP 'jquery.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script src="jquery/jquery-3.2.1.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$(".flip").click(function() {
			$(".panel").slideToggle("slow");
		});
	});
</script>

<style type="text/css">
div.panel,p.flip {
	margin: 0px;
	padding: 5px;
	text-align: center;
	background: #e5eecc;
	border: solid 1px #c3c3c3;
}

div.panel {
	height: 120px;
	display: none;
}
</style>
</head>

<body>

	<div class="panel">
		<p>W3School - 领先的 Web 技术教程站点</p>
		<p>在 W3School，你可以找到你所需要的所有网站建设教程。</p>
	</div>

	<p class="flip">请点击这里</p>
</body>
</html>
