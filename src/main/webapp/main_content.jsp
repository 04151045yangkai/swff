<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title>系统主页</title>

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
	font-size: 20px;
	background-color: #E4EDF0;
	font-size: 20px;
}

h2 {
	color: #4DB7A1;
}

#select {
	outline: 0;
	border: 0;
	width: 50px;
	height: 22px;
	border: 1px #4DB7A1 solid;
	border-radius: 10px;
}

input {
	 outline: none;
	 background:  transparent;
}

.b {
	font-size: 13px;
	font-family: "楷体";
	margin-left: 20px;
	width: 65px;
	height: 22px;
	border: 1px #4CB8A1 solid;
	border-radius: 10px;
	font-family: "楷体";
}

.b:hover {
	background: #C9F1F2;
}

#select_all {
	margin-left: 85px;
}

a {
	text-decoration: none;
}

a:hover {
	text-decoration: underline;
}
</style>
</head>
<body>
	</div>
	<form action="${pageContext.request.contextPath}/likeselect"
		method="post">
		<div align="center" width="85%" height="30px">
			姓名:<input type="text" name="name" palcehoder="请输入姓名"
				value="${show_name}"> 手机:<input type="text" name="tel"
				palcehoder="请输入电话" value="${show_tel}"> <input id="select"
				type="submit" value="查询">
		</div>

	</form>

	<caption>
		<h2 align="center">查询客户</h2>
	</caption>
	<form action="${pageContext.request.contextPath}/delmore" method="post"
		onsubmit="return suredel()">
		<table width="85%" height=30px" border=1 cellspacing="0"
			cellpadding="10" align="center">
			<tr width="85%" height="30px">
				<th><input type="checkbox" id="top_cb" onclick="checked()" />
				</th>
				<th>序号</th>
				<th>姓名</th>
				<th>年龄</th>
				<th>性别</th>
				<th>邮箱</th>
				<th>电话</th>
				<th>备注</th>
				<th>操作</th>
			</tr>
			<c:choose>
				<c:when test="${not empty bean}">
					<c:forEach items="${bean.pageDate}" varStatus="v" var="ele">
						<tr width="85%" height="30px" align="center">
							<td><input type="checkbox" name="cid" id="item_cb"
								value="${ele.cid}" />
							</td>
							<td>${v.count}</td>
							<td>${ele.cname}</td>
							<td>${ele.age}</td>
							<td>${ele.gender}</td>
							<td>${ele.email}</td>
							<td>${ele.telephone}</td>
							<td>${ele.description}</td>
							<td><a href="javascript:void(0)"
								onclick="delcustomer('${ele.cid}')">删除</a>&nbsp;&nbsp; <a
								href="${pageContext.request.contextPath}/preupdate?cid=${ele.cid}">修改</a>
							</td>
						</tr>
					</c:forEach>
				</c:when>
				<c:otherwise>
					<tr>
						<td colspan="9"><font color="red">目前没有任何客户信息</font>
						</td>
					</tr>
				</c:otherwise>
			</c:choose>
			<tr>
				<td colspan="9" height="30px" align="center">
					${bean.currentPage}/${bean.totalPage}&nbsp;&nbsp; <!-- 拿出当前页,再拿出总页数 -->
					<a
					href="${pageContext.request.contextPath}/likeselect?currentPage=1&tel=${requestScope.tel}&name=${requestScope.name}">首页</a>&nbsp;&nbsp;
					<!--主页当点击主页链接时页面请求跳到主页,当前页码为1 --> <a
					href="${pageContext.request.contextPath}/likeselect?currentPage=${(bean.currentPage-1)>1?(bean.currentPage-1):1}&tel=${requestScope.tel}&name=${requestScope.name}">上一页</a>&nbsp;&nbsp;
					<a
					href="${pageContext.request.contextPath}/likeselect?currentPage=${(bean.currentPage+1)<bean.totalPage?(bean.currentPage+1):bean.totalPage}&tel=${requestScope.tel}&name=${requestScope.name}">下一页</a>&nbsp;&nbsp;
					<a
					href="${pageContext.request.contextPath}/likeselect?currentPage=${bean.totalPage}&tel=${requestScope.tel}&name=${requestScope.name}">尾页</a>
					<!--这三条链接当用户点击不同页码时进行数据的更新  --> <input id="select_all" class="b"
					type="button" value="全选" onclick="checkAll()" /> <input class="b"
					type="button" value="反选" onclick="reverseAll()" /> <!--全选和反选 --> <input
					class="b" type="submit" value="删除选中" />
				</td>
			</tr>
		</table>
	</form>
</body>
<script type="text/javascript">
	function suredel() {
		return window.confirm("Are you sure?");
	}
	function checked() {
		//这个点击事件将会实现同步操作,首先获取到所有的复选框
		var top_cb = document.getElementById("top_cb");
		//找到所有的复选框
		var inputs = document.getElementsByTagName("input");
		//fot循环实现每个复选框与top_cb的状态一致
		for ( var i = 0; i < inputs.length; i++) {
			inputs[i].checked = top_cb.checked;
		}
	}
	function delcustomer(cid) {
		if (window.confirm("你确定要删除吗?")) {
			window.location.href = "${pageContext.request.contextPath}/del?cid="
					+ cid;
		}

	}
	function checkAll() {
		var inputs = document.getElementsByTagName("input");
		for ( var i = 0; i < inputs.length; i++) {
			inputs[i].checked = true;
		}
	}
	function reverseAll() {
		var inputs = document.getElementsByTagName("input");
		for ( var i = 0; i < inputs.length; i++) {
			inputs[i].checked = !inputs[i].checked;
		}
	}
</script>
</html>
