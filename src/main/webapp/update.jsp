<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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

<title>My JSP 'update.jsp' starting page</title>

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
	color: #4CB7A0;
	background-color: #E4EDF0;
	font-family: "楷体";
}

table {
	border: 1px #4CB7A0 solid;
	margin-left: 5px;
	outline: 0;
	margin-left: 5px;
}

span {
	font-family: 楷体;
	font-size: 13px;
	color: red;
}

#top_div {
	font-size: 25px;
	margin-left: 200px;
	margin-top: 15px;
	margin-bottom: 20px;
	color: #4CB7A0;
	margin-bottom: 20px;
}

tr {
	color: #4CB7A0;
	border: 1px #4CB7A0 solid;
	background: transparent;
}

td {
	border: 1px #4CB7A0 solid;
}

.t {
	text-align: center;
}

input {
	font-family: 楷体;
	margin-left: 15px;
	border: 0;
	background: transparent;
	outline: 0;
	color: #4CB7A0;
}

textarea {
	border: 0;
	outline: 0;
	color: #4CB7A0;
	margin-left: 15px;
	background: transparent;
}

#sub_in {
	margin-left: 150px;
	width: 50px;
	height: 25px;
	border: 1px #4CB7A0 solid;
	border-radius: 15px;
}

#sub_in:hover {
	background-color: #4CB7A0;
}

#res_in {
	width: 50px;
	height: 25px;
	border: 1px #4CB7A0 solid;
	border-radius: 15px;
}

#res_in:hover {
	background-color: #4CB7A0;
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
	<form action="${pageContext.request.contextPath}/update" method="post"
		onsubmit="return checkall()">
		<input type="hidden" name="cid" value="${customer.cid}" />
		<div id="top_div">修改客户信息</div>
		<table width="40%" height="500px" cellpadding="0" cellspacing="1">
			<tr>
				<td class="t">客户姓名</td>
				<td><input type="text" name="cname" value="${customer.cname}"
					id="cname" onblur="onblurcname()" /> <span id="cnamespan"></span>
				</td>
			</tr>
			<tr>
				<td class="t">客户年龄</td>
				<td><input type="text" name="age" value="${customer.age}"
					id="age" onblur="onblurage()" /> <span id="agespan"></span>
				</td>
			</tr>
			<tr>
				<td class="t">客户性别</td>
				<td><c:if test="${customer.gender=='男'}">
						<input type="radio" name="gender" value="男" checked="checked" />男
    <input type="radio" name="gender" value="女" />女
    </c:if> <c:if test="${customer.gender=='女'}">
						<input type="radio" name="gender" value="男" />男
    <input type="radio" name="gender" value="女" checked="checked" />女
    </c:if></td>
			</tr>

			<tr>
				<td class="t">客户邮箱</td>
				<td><input type="text" name="email" value="${customer.email}"
					id="email" onblur="onbluremail()" /> <span id="emailspan"></span>
				</td>
			</tr>

			<tr>
				<td class="t">客户电话</td>
				<td><input type="text" name="telephone"
					value="${customer.telephone}" onblur="onblurtel()" id="tel" /><span
					id="telspan"></span>
				</td>
			</tr>

			<tr>
				<td class="t">客户简介</td>
				<td><textarea rows="10" cols="40" name="description"
						onblur="onblurtext()" id="text">${customer.description}</textarea>
					<span id="textspan"></span>
				</td>
			</tr>

			<tr>
				<td colspan="2"><input id="sub_in" type="submit" value="修改" />
					<input id="res_in" type="reset" value="重置" /></td>
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
               _(_)_                        wWWWw
   @@@@       (_)@(_)  vVVVv    _     @@@@  (___)
  @@()@@ wWWWw  (_)\   (___)  _(_)_  @@()@@   Y
   @@@@  (___)     `|/   Y   (_)@(_)  @@@@   \|/
    /      Y       \|   \|/   /(_)    \|      |/
 \ |     \ |/       | /\ | / \|/       |/    \|
   |///  \\|/// \\\\|//\\|///\|///  \\\|//  \\|//
^^^^^^ 百 ^^^^^^^^^^^^^ 花 ^^^^^^^^^^^^^^^ 园 ^^^^^</pre>
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
			document.getElementById("textspan").innerHTML = "√";
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
