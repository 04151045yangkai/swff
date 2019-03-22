<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>


<title>My JSP 'pagedate.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

</head>

<body>
	<table width="85%" height="30px" border="1" cellpadding="1"
		cellspacing="0" align="center">
		<tr>
			<th>序号</th>
			<th>姓名</th>
			<th>年龄</th>
			<th>性别</th>
			<th>邮箱</th>
			<th>电话</th>
			<th>备注</th>
			<th>操作</th>
		<tr/>
		<c:choose>
			<c:when test="${not empty bean}">
				<c:forEach items="${bean.pageDate}" varStatus="v" var="ele">
					<tr width="85%" height="30px" align="center">
						<td>${v.count}</td>
						<td>${ele.cname}</td>
						<td>${ele.age}</td>
						<td>${ele.gender}</td>
						<td>${ele.email }</td>
						<td>${ele.telephone}</td>
						<td>${ele.description}</td>
					</tr>
				</c:forEach>
			</c:when>
			<c:otherwise>
			<tr>
			<td colspan="7"><font color="red">目前没有任何客户信息</font></td>
			</tr>
			</c:otherwise>
		</c:choose>
		<tr>
		<td colspan="7" align="center">
				${bean.currentPage}/${bean.totalPage}&nbsp;&nbsp;
				<!-- 拿出当前页,再拿出总页数 -->
			<a href="${pageContext.request.contextPath}/page?currentPage=1">首页</a>&nbsp;&nbsp; 
			<!--主页当点击主页链接时页面请求跳到主页,当前页码为1 -->
			<a href="${pageContext.request.contextPath}/page?currentPage=${(bean.currentPage-1)>1?(bean.currentPage-1):1}">上一页</a>&nbsp;&nbsp; 
			<a href="${pageContext.request.contextPath}/page?currentPage=${(bean.currentPage+1)<bean.totalPage?(bean.currentPage+1):bean.totalPage}">下一页</a>&nbsp;&nbsp;
            <a href="${pageContext.request.contextPath}/page?currentPage=${bean.totalPage}">末页</a>
            <!--这三条链接当用户点击不同页码时进行数据的更新  -->
			</td>
		</tr>
	</table>
</body>
</html>
