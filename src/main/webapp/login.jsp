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

<title>login</title>

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
	background-image: url(img/login.jpg);
	background-size: 100% 770px;
	background-repeat: no-repeat;
}

div {
	margin: auto;
	text-align: center;
	width: 360px;
	height: 35px;
	border-radius: 10px;
}

#top_div {
	height: 80px;
	margin-top: 100px;
	font-size: 60px;
	color: #DEB887;
	font-family: "bookman old style";
	transition: opacity 5s 1s;
	/*过度动画：值1 你要过渡的属性 值2：多少秒过渡完  值3：延时执行*/
	opacity: 0.1;
}

#main_div {
	border-radius: 10px;
	height: 250px;
	margin: auto;
	margin-top: 30px;
	overflow: hidden;
	border: 3px wheat solid;
	box-shadow: 0px 0px 100px #CCCCCC;
}

#username_div {
	margin-top: 30px;
	width: 280px;
	border: 1px wheat solid;
}

#password_div {
	width: 280px;
	margin-top: 20px;
	border: 1px wheat solid;
}

#login_div {
	width: 280px;
	margin-top: 10px;
	/*border: 1px wheat solid;*/
}

span {
	color: #DEB887;
	font-family: "楷体";
}

input {
	background: transparent;
	margin-top: 8px;
	font-family: "楷体";
	font-size: 20px;
	border: 0px;
	outline: 0px;
}

#password {
	width: 180px;
}

#remberPassword {
	width: 280px;
	margin-top: 10px;
	/*border: 1px wheat solid;*/
}

#remberspan {
	margin-left: -20px;
}

.in {
	font-weight: bold;
	background-color: #DEB887;
	border: 1px #CCCCCC solid;
	border-radius: 5px;
	width: 65px;
	height: 28px;
	margin-right: 20px;
	color: brown;
}
/*按钮效果*/
.in:hover {
	box-shadow: 0px 0px 30px #A52A2A;
}

.in1 {
	color: antiquewhite;
}

#showpsd {
	background-image: url(img/show_password_icon.png);
	background-repeat: no-repeat;
	float: right;
	border: 0px wheat solid;
	width: 40px;
	height: 30px;
	margin-top: 6px;
}

a {
	color: cornflowerblue;
	text-decoration: none;
}

a:hover {
	text-decoration:underline;
}

#botton_div {
	margin-top: 20px;
	width: 200px;
	height: 30px;
	color: #DEB887;
	font-size: 20px;
	font-family: "楷体";
}
</style>
<script type="text/javascript">
	window.onload = function() {

		document.getElementById("top_div").style.opacity = 1.0;

	}
</script>
</head>

<body>
	<form action="${pageContext.request.contextPath}/login" method="post">
		<div id="top_div">Login</div>
		<div id="main_div">
			<div id="username_div">
				<span>用户名:</span> <input class="in1" type="text" name="userId"
					value="${cookie.userId.value}" placeholder="请输入用户名:" />
			</div>
			<div id="password_div">
				<span>密码:</span> <input class="in1" type="password" name="passWord"
					id="password" value="${cookie.password.value}" placeholder="请输入密码:" />
				<div id="showpsd" onmousedown="showPassword()"
					onmouseup="hiddenPassword()"></div>
			</div>

			<div id="remberPassword">
				<span id="remberspan"> 记住密码: </span> <input type="checkbox"
					name="rember" /> <input type="radio" name="rembertime" value="7"
					checked="checked" /><span>一周</span> <input type="radio"
					name="rembertime" value="30" /><span id=""> 一个月 </span>
			</div>
			<div id="login_div">
				<input class="in" type="submit" value="登录" /> <input class="in"
					type="reset" value="清除" />
			</div>

		</div>
		<div id="botton_div">
			没有账号请<a href="/MyFirstProject/regist.jsp"><font
				style="color:white">注册</font> </a>
		</div>
	</form>
	<div align="center" style="color:red;border-width:0px;">${login_msg}</div>
	<script type="text/javascript">
		function showPassword() {
			document.getElementById("password").type = "text";
		}

		function hiddenPassword() {
			document.getElementById("password").type = "password";
		}
	</script>
</body>
</html>
