<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<style type="text/css">
	body {
		font-family: "楷体";
		font-size: 20px;
		background-color: #E4EDF0;
		font-size: 20px;
	}
</style>
 <div style="width:500px;margin:0px auto;text-align:center">
	<table align='center' border='1' cellspacing='0'>
	    <tr>
	        <td>学生ID</td>
	        <td>学生初始密码</td>
			<td>用户权限</td>
	    </tr>
	    <c:forEach items="${logins}" var="c" varStatus="st">
	        <tr>
	            <td>${c.userid}</td>
	            <td>${c.password}</td>
				<td>${c.userflag}</td>
	        </tr>
	    </c:forEach>
	</table>
	<div style="text-align:center">
		<a href="?start=0">首  页</a>
		<a href="?start=${page.start-page.count >1 ? page.start-page.count : 0}">上一页</a>
		<a href="?start=${page.start+page.count < page.last ? page.start+page.count :page.last}">下一页</a>
		<a href="?start=${page.last}">末  页</a>
	</div>
 </div>
