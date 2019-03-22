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
<title>my_first_project</title>

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
	font-family: "楷体";
	background-image: url(img/regist_bac.jpg);
	background-repeat: no-repeat;
	background-size: 100% 800px;
	overflow-y:hidden ; 
}

#regist_div {
	overflow: hidden;
	margin-left: 700px;
	margin-top: 130px;
	height: 80px;
	font-size: 60px;
	color: #DEB887;
	font-family: "bookman old style";
	transition: opacity 5s 1s;
	/*过度动画：值1 你要过渡的属性 值2：多少秒过渡完  值3：延时执行*/
	opacity: 0.1;
}

#p1 {
	text-align: center;
	font-size: 20px;
}
/*标题div*/
#top-div {
	overflow: hidden;
	margin: auto;
	margin-top: -10px;
	text-align: center;
	color: wheat;
	width: 400px;
	height: 50px;
}

#main-div {
	margin-left: 560px;
	overflow: hidden;
	border-radius: 15px;
	margin-top: 30px;
	width: 440px;
	height: 300px;
	border: 3px white solid;
	box-shadow: 0px 0px 100px rosybrown;
}

table {
	margin-top: 5px;
	border-collapse: collapse;
}

tr {
	color: white;
	border: 1px white solid;
}

td {
	height: 22px;
	width: 120px;
	border: 1px white solid;
}

P {
	color: wheat;
	text-align: right;
	font-size: 15px;
}

span {
	font-size: 13px;
}

input {
	color: bisque;
	font-size: 15px;
	height: 30px;
	outline: 0px;
	border-width: 0px;
	BACKGROUND-COLOR: transparent;
	border: 0px wheat solid;
}

.td {
	width: 120px;
}

.in {
	width: 50px;
	height: 22px;
	font-family: "楷体";
	font-size: 15px;
	background-color: cornflowerblue;
	border-radius: 5px;
	margin-left: 110px;
	box-shadow: none;
	margin-top: 15px;
	font-family: "楷体";
}

.in:hover {
	box-shadow: 0px 0px 30px rosybrown;
}

#a1 {
	font-size: 14px;
	text-decoration: none;
	color: :wheat;
}

#a1:hover {
	text-decoration: underline;
}

img {
	margin-left: 75px;
	font-size: 10px;
}

a {
	color: wheat;
	text-decoration: none;
}

a:hover {
	text-decoration: underline;
}

#botton {
	text-align: right;
	font-size: 20px;
}

#msg {
	margin-top: -40px;
	margin-left: 600px;
}
</style>
<script type="text/javascript">
	window.onload = function() {

		document.getElementById("regist_div").style.opacity = 1.0;

	}
</script>
</head>
<body>
	<form action="${pageContext.request.contextPath}/regist" method="post"
		name="form" onsubmit="return checkForm()">
		<div id="regist_div">Regist</div>
		<div id="main-div">
			<div id="top-div">
				<p id="p1">客户管理系统</p>
			</div>
			<table align="center">
				<!--用户名-->
				<tr>
					<td>
						<p>用户名:</p>
					</td>
					<td><input type="text" name="username" value=""
						onfocus="onfocususername()" onblur="onblurusername()"></td>
					<td class="td"><span id="user"></span>
					</td>
				</tr>
				<!-- 密码 -->
				<tr>
					<td>
						<p>密码:</p>
					</td>
					<td><input type="password" name="password" value=""
						onfocus="onfocuspsd1()" onblur="onblurpsd1()"></td>
					<td class="td"><span id="psd1"></span>
					</td>
				</tr>
				<!-- 确认密码 -->
				<tr>
					<td>
						<p>确认密码:</p>
					</td>
					<td><input type="password" name="repassword" value=""
						onfocus="onfocuspad2()" onblur="onblurpsd2()"></td>
					<td class="td"><span id="psd2"></span>
					</td>
				</tr>
				<!-- 验证码 -->
				<tr>
					<td><img alt="验证码:"
						src="${pageContext.request.contextPath}/yzm" id="yzm"
						onclick="changeyzm()" />
					</td>
					<td><input type="text" name="yzm" value=""
						placeholder="请输入验证码:" onblur="onbluryzm()">
					</td>
					<td><a href="javascript:void(0)" onclick="changeyzm()" id="a1">
							看不清换一张 </a>
					</td>
				</tr>
				<tr>
					<td colspan="3"><input class="in" type="submit" value="注册">
						<input class="in" type="reset" value="重置" />
					</td>
				</tr>
				<tr>
					<td colspan="3" id="botton">已有账号请<a
						href="/MyFirstProject/login.jsp">登陆</a></td>
				</tr>

			</table>
		</div>
		<div id="msg" style="color:red">${regist_msg}</div>
	</form>
	<script type="text/javascript">

			var xmlhttp;//创建异步请求对象
			if (window.XMLHttpRequest){// code for IE7+, Firefox, Chrome, Opera, Safari
 			 xmlhttp=new XMLHttpRequest();//其他版本的浏览器则使用这种方式创建对象
 		 }else{// code for IE6, IE5
  			xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");//IE5中创建对象代码需要这样写
  		}
  			//当元素失去焦点的时候判断用户名是否为空
		function onblurusername() {
		    var arrs=document.getElementsByTagName("input");
		    for(var i=0;i<arrs.length;i++){
		     arrs[i].disabled=false;
		     //将所有的输入框的禁止输入取消
		    }		
			var reg = /^[\u4E00-\u9FA5A-Za-z0-9]{2,20}$/;
			var user = document.getElementById("user");
			var username = document.form.username.value;
			var flag=reg.test(username);
			if(flag){
				var user = document.getElementById("user");
				//user.innerHTML = "用户名合法1";
			//	user.style.color = "cornflowerblue";
				//当用户输入完用户名后立即将username发送到后台进行查询是否有此人
			    xmlhttp.open("GET","/MyFirstProject/findusername?username="+username ,true);//打开请求连接
				xmlhttp.send();//发送请求
				return flag;
			}else{
			    var user = document.getElementById("user");
				user.innerHTML = "支持中文/字母开头/下划线数字6-20位";
				user.style.color = "red";
			}
			return flag;
		}
  		//接收后台的响应
		//当 readyState 等于 4 且状态为 200 时，表示响应已就绪：就等你后台响应呢
		//如需获得来自服务器的响应，请使用 XMLHttpRequest 对象的 responseText 或 responseXML属性。
	xmlhttp.onreadystatechange=function(){
  if (xmlhttp.readyState==4 && xmlhttp.status==200){
    	var v=xmlhttp.responseText;//接收字符串类型的响应数据
    	//alert(v);返回值是yes/no
    	//alert(v);
    	if(v=="yes"){
    	 document.getElementById("user").innerHTML="<font style='color:#509DCD'>用户名正确</font>";
    	}else if(v=="no"){
    	document.getElementById("user").innerHTML="<font color='red'>该用户名已存在!!!</font>";
    	//document.getElementById("user").innnerHTML="<font color='red'>该用户名已存在!!!</font>";
    	//user.innnerHTML="该用户名已存在!!!";
    	//当用户名已存在的时候要将下面的表单禁止输入
    	var arrs=document.getElementsByTagName("input");
    	for(var i=0;i<arrs.length;i++){
    	  if(i!=0){
    	   //跳过第一个输入框
    	   arrs[i].disabled=true;
    	  }
       }
   }		
 }
  		
}
function checkForm() {
			var username = onblurusername();
			var password = onblurpsd1();
			var repassword = onblurpsd2();
			if(username && password && repassword) {
				return true;
			} else {
				return false;
			}

		}
		//当元素获得焦点的时候提示用户输入用户名
		function onfocususername() {
			//根据ID拿对应对象
			var user = document.getElementById("user");
			user.innerHTML = "请输入用户名";
			user.style.color = "#ccc";
		}
	
		//当元素获得焦点的时候提示用户输入密码
		function onfocuspsd1() {
			var psd1 = document.getElementById("psd1");
			psd1.innerHTML = "请输入密码";
			psd1.style.color = "#ccc";
		}
		//当元素失去焦点的时候判断用户输入密码是否为空
		function onblurpsd1() {
			//设置验证密码的正则表达式
			var reg = /^(\w){6,20}$/;
			var psd1 = document.getElementById("psd1");
			var password = document.form.password.value;
			if(password == "") {
				//如果密码为空
				psd1.innerHTML = "密码不能为空!!!";
				psd1.style.color = "red";
				return false;
			} else if(!reg.test(password)) {
				psd1.innerHTML = "密码由6-20位字母,数字,下划线组成!!!"
				psd1.style.color = "red";
				return false;
			} else {
				psd1.innerHTML = "<font style='color:#509DCD'>格式正确</font>";
				psd1.style.color = "cornflowerblue";
				return true;

			}

		}
		function onfocuspad2() {
			//提示用户确认密码
			var psd2 = document.getElementById("psd2");
			psd2.innerHTML = "请确认密码"
			psd2.style.color = "#ccc";
		}

		function onblurpsd2() {
			var password = document.form.password.value;
			var repassword = document.form.repassword.value
			var psd2 = document.getElementById("psd2");
			if(password != repassword) {
				psd2.innerHTML = "两次密码不一致"
				psd2.style.color = "red";
				return false;
			} else if(repassword==""){
				psd2.innerHTML = "密码不能为空"
				psd2.style.color = "red";
				return false;
				}else {
				psd2.innerHTML = "<font style='color:#509DCD'>密码正确</font>";
				psd2.style.color = "cornflowerblue";
				return true;
			}

		}
		
		//更换验证码
		function changeyzm() {
			document.getElementById("yzm").src = "${pageContext.request.contextPath}/yzm?imgpath=" + new Date().getTime();
		}
	</script>

</body>
</html>
