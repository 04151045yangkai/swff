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

<title>main_top</title>

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
	background-image: url(img/top.jpg);
	background-size: 100% 300px;
	background-repeat: no-repeat;
	font-family: "楷体";
}

#time_div {
	width: 260px;
	height: 30px;
	border: 0px black solid;
	margin-right: -350px;
	float: right;
	font-size: 18px;
}

#top_div {
	margin-top: 35px;
	border: 0px black solid;
	width: 340px;
	height: 20px;
	float: right;
	font-size: 20px;
}

a:hover {
	text-decoration: underline;
}

a {
	text-align: right;
	text-decoration: none;
}

#week_s {
margin-top:100px;
margin-left:800px;
	width: 550px;
	height: 22px;
	
	color:#4CB8A0;
}
</style>
</head>

<body>
	<h1 style="text-align:center;color:#4CB8A0;font-size:35px;">客户管理系统</h1>
	<div id="top_div">
		<span style="color:#4CB8A0;">${user.username}  欢迎你!!!&nbsp;</span> <a
			href="javascript:void(0)" onclick="safe_exit()">安全退出</a>
	</div>
	<div id="time_div" style="color:#4CB8A0;"></div>
	<div id="week_s"></div>
</body>
<script>
	function safe_exit() {
		if (window.confirm("你确认要退出?")) {
			window.parent.location.href = "${pageContext.request.contextPath}/exit";
		}

	}
	function showTime() {
		var date = new Date();
		var dateStr = date.toLocaleString();
		document.getElementById('time_div').innerHTML = dateStr;

	}
	showTime();
	//一秒自动调用一次
	setInterval("showTime()", 1000);

	var date1 = new Date();
	var week = date1.getDay();
	var weeks=document.getElementById("week_s");
	if(week==0){
	weeks.innerHTML="星期天:休息好了,明天就准备满血战斗吧!!!";
	}else if(week==1){
	weeks.innerHTML="星期一:我的存在，就是为了想念你。";
	}else if(week==2){
	weeks.innerHTML="星期二:I like myself better when I'm with you.";
	}else if(week==3){
	weeks.innerHTML="星期三:凡事不要说“我不会”或“不可能”，因为你根本还没有去做!";
	}else if(week==4){
	weeks.innerHTML="星期四:走得最慢的人，只要他不丧失目标，也比漫无目的地徘徊的人走得快";
	}else if(week==5){
	weeks.innerHTML="嗨...今天星期五:去和小伙伴们约起来!";
	}else if(week==6){
	weeks.innerHTML="星期六:在别人休息的时候,正是你超越他们的时机.";
	}
</script>

</html>
