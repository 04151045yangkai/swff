<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%
    String path = request.getContextPath();
    String basepath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

%>
<html>
<head>
    <base href="<%=basepath %>" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Insert title here</title>
</head>
<body>
<div id="login_div">

    <form action="/login" method="post">
        username:<input type="text" name="userId"><br/>
        password:<input type="password" name="passWord"><br/>
        userflag:<input type="text" name="userFlag"></br>
        <input type="submit" value="提交">
    </form>
</div>

<div id="delete_div">
    <form action="/deleteUser" method="post">
        请输入要删除的userId:<input type="text" name="userId"><br/>
        <input type="submit" value="提交">
    </form>
</div>

<div id="selectAllUser_div">
    <form action="/selectAllUser" method="post">
        查询所有用户:
        <input type="submit" value="查询所有">
    </form>
</div>


<div id="update_div">
    <form action="/updateUser" method="post">
        username:<input type="text" name="userId"><br/>
        password:<input type="password" name="passWord"><br/>
        userflag:<input type="text" name="userFlag"></br>
        <input type="submit" value="提交更新">
    </form>
</div>
</body>
</html>