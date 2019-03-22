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

<title>My JSP 'addcustomer.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">
#add_div {
	color: #4CB7A0;
	margin-top: 25px;
	margin-bottom: 10px;
	margin-left: -750px;
	margin-top: 25px;
	font-weight: bolder;
}

body {
	color: #4CB7A0;
	background-color: #E4EDF0;
	font-family: "楷体";
	text-align: center;
}

table {
	margin-left: 30px;
	width: 35%;
	height: 500px;
	border: 1px #4CB7A0 solid;
	width: 35%;
}

tr {
	border: 1px #4CB7A0 solid;
}

td {
	border: 1px #4CB7A0 solid;
	height: 25px;
}

input {
	outline: 0;
	border: 0;
	color: #4CB7A0;
	font-family: 楷体;
	background: transparent;
	border: 1px #E4EDF0 solid;
}

span {
	font-family: 楷体;
	font-size: 10px;
	color: red;
}

#sub_in {
	margin-left: 120px;
	width: 50px;
	height: 25px;
	border: 1px #4CB7A0 solid;
	border-radius: 15px;
	font-weight: bolder;
}

#sub_in:hover {
	box-shadow: 0px 0px 30px #4CB7A0;
}

#res_in {
	margin-left: 30px;
	width: 50px;
	height: 25px;
	border: 1px #4CB7A0 solid;
	border-radius: 15px;
	width: 50px;
	font-weight: bolder;
}

#res_in:hover {
	box-shadow: 0px 0px 30px #4CB7A0;
}

.t {
	text-align: center;
}

textarea {
	color: #4CB7A0;
	background: transparent;
	font-size: 16px;
	outline: 0;
	border: 0;
}

#attention {
	width: 450px;
	height: 500px;
	border: 1px #4CB7A0 solid;
	float: right;
	margin-top: -500px;
	margin-right: 135px;
	color: #4CB7A0;
	text-align: left;
}
</style>
</head>

<body>
	<form action="${pageContext.request.contextPath}/addcustomer"
		method="post" onsubmit="return checkall()">
		<div id="add_div">
			<font size="5">添加用户</font>
		</div>
		<table cellpadding="1" cellspacing="0">
			<tr>
				<td class="t"></td>
				<td><input type="text" name="cname" id="cname" value=""
					placeholder="请输入用户ID" onblur="onblurcname()" /> <span
					id="cnamespan"></span></td>
			</tr>
			<tr>
				<td class="t">客户年龄</td>
				<td><input type="text" name="age" id="age" value=""
					placeholder="请输入客户年龄" onblur="onblurage()" /> <span id="agespan"></span>
				</td>
			</tr>
			<tr>
				<td class="t">客户性别</td>
				<td><input type="radio" name="gender" id="" value="男"
					checked="checked" />男 <input type="radio" name="gender" id=""
					value="女" />女</td>
			</tr>
			<tr>
				<td class="t">客户邮箱</td>
				<td><input type="text" name="email" id="email" value=""
					placeholder="请输入客户邮箱" onblur="onbluremail()" /> <span
					id="emailspan"></span></td>
			</tr>
			<tr>
				<td class="t">客户电话</td>
				<td><input type="text" name="telephone" id="tel" value=""
					placeholder="请输入客户电话" onblur="onblurtel()" /><span id="telspan"></span>
				</td>
			</tr>
			<tr>
				<td class="t">客户信息</td>
				<td><textarea name="description" rows="5" cols="20" id="text"
						onblur="onblurtext()"></textarea> <span id="textspan"></span>
				</td>
			</tr>
			<tr>
				<td colspan="2"><input id="sub_in" type="submit" value="添加" />
					<input id="res_in" type="reset" value="重置" />
				</td>
			</tr>

		</table>
		<div id="attention">
			<p style="font-weight: bolder;">注意事项:</p>
			<p>1:客户姓名可包括中文,英文,数字</p>
			<hr>
			<p>2:客户年龄范围1~99不可肆意捏造信息</p>
			<hr>
			<p>3:客户邮箱请按照正常邮箱格式书写否则无法识别</p>
			<hr>
			<p>4:客户电话格式为11位数字组成,请输入有效电话号</p>
			<hr>
			<p>5:客户信息描述不可随意敷衍了事,至少10个字</p>
			<hr>
			<p>6:只有所有信息按照规定格式书写才可允许提交</p>
			<hr>
			<pre>
　　　　　　　\\\|/// 
　　　　　　\\　.-.-　// 
.　　　　　　(　.@.@　) 
+-------oOOo-----(_)-----oOOo---------+ 
|　　　 　　　　　　　　　　　　　　　| 
|　    　圣   诞   快  乐！！！ 　  　| 
|　　　　　　　　　　　　　　　　 　　| 
+---------------------Oooo------------+
</pre>
		</div>
	</form>
</body>
<script type="text/javascript">
	function onblurcname() {
		var cname = document.getElementById("cname").value;//拿出用户输入的用户名
		var reg = /^[\u4E00-\u9FA5A-Za-z]+$/; //中文、英文、数字包括下划线：
		var flag = reg.test(cname);
		if (cname == "") {
			document.getElementById("cnamespan").innerHTML = "用户名不为空";
			return false;
		} else if (flag) {
			document.getElementById("cnamespan").innerHTML = "<font style='color:blue'>用户名合法</font>";
			return true;

		} else {
			document.getElementById("cnamespan").innerHTML = "用户名不合法";
			return false;
		}

	}
	function onblurage() {
		var age = document.getElementById("age").value;//取出age值
		var reg = /^[0-9]{1,2}$/;
		var flag = reg.test(age);
		if (age == "") {
			document.getElementById("agespan").innerHTML = "年龄不为空";
			return false;
		} else if (!flag) {
			document.getElementById("agespan").innerHTML = "年龄不合法";
			return false;
		} else {
			document.getElementById("agespan").innerHTML = "<font style='color:blue'>年龄合法</font>";
			return true;
		}
	}
	function onbluremail() {
		var email = document.getElementById("email").value;
		var reg = /^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/;
		var flag = reg.test(email);
		if (email == "") {
			document.getElementById("emailspan").innerHTML = "邮箱不能为空";
			return false;
		} else if (flag) {
			document.getElementById("emailspan").innerHTML = "<font style='color:blue'>邮箱可以使用</font>";
			return true;
		} else {
			document.getElementById("emailspan").innerHTML = "格式不正确";
			return false;
		}
	}
	function onblurtel() {
		var tel = document.getElementById("tel").value;
		var reg = /^(13[0-9]|14[0-9]|15[0-9]|166|17[0-9]|18[0-9]|19[8|9])\d{8}$/;
		var flag = reg.test(tel);
		if (tel == "") {
			document.getElementById("telspan").innerHTML = "电话号码不为空";
			return false;
		} else if (flag) {
			document.getElementById("telspan").innerHTML = "<font style='color:blue'>电话号码合法</font>";
			return true;
		} else {
			document.getElementById("telspan").innerHTML = "电话号码不合法";
			return false;
		}
	}
	function onblurtext() {
		var text = document.getElementById("text").value;
		if (text == "") {
			document.getElementById("textspan").innerHTML = "偷懒,写点儿再走";
			return false;
		} else if (text.length < 10) {
			document.getElementById("textspan").innerHTML = "认真点儿";
			return false;
		} else {
			document.getElementById("textspan").innerHTML = "<font style='color:blue'>√</font>";
			return true;
		}
	}
	function checkall() {
		var cname = onblurcname();
		var age = onblurage();
		var email = onbluremail();
		var tel = onblurtel();
		var text = onblurtext();
		if (cname == true && age == true && email == true && tel == true
				&& tel == true && text == true) {
			return true;
		} else {
			return false;
		}
	}
</script>
</html>
