<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Kazami Hatsuroku
  Date: 2018/1/6
  Time: 22:14
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="myDAO.UserDAO, myModel.UserBean" %>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="css/addnews.css">

    <title>新增公告</title>
</head>
<body>
<%
    request.setCharacterEncoding("utf-8");
    response.setContentType("text/html;charSet=utf-8");
%>
<div id="head">
    <div class="logo">
        <!-- <img src="picture/logo.png"> -->
    </div>
    <div class="title">
			<span id="myTitle"
                  onclick="window.location.href='<%=request.getContextPath()%>/index.jsp'">办公自动化系统</span>
    </div>
    <c:if test="${ username == null }">
        <div class="login">
            <a href="<%=request.getContextPath()%>/login.jsp">员工登陆</a>
        </div>
    </c:if>
    <c:if test="${ username != null }">
        <div class="login">
            <a href="<%=request.getContextPath()%>/loginsuccess.jsp">当前用户：${username}</a>
            <a href='<%=request.getContextPath()%>/logout.jsp'
               style="margin-left: 10px; font-weight: 700; font-size: 13px">注销</a>
        </div>
    </c:if>
</div>
<div id="nav">
    <div class="navblock">
        <ul>
            <li><a href="javascript:void(0)" class="detail">添加用户</a></li>
        </ul>
    </div>
</div>
<div id="content">
    <div class="form">
        <form name="myForm"
              action="<%=request.getContextPath()%>/AddUser" method="post">
            <span>用户名</span>
            <input type="text" name="username" required="required" style="width: 50%; height: auto;">
            <span>用户密码</span>
            <input type="password" name="password" required="required" style="width: 50%; height: auto;">
            <span>用户部门</span>
            <select name="department_id" required="required">
                <option value="0">无归属</option>
                <option value="1">教务处</option>
                <option value="2" selected="selected">计算机系</option>
                <option value="3">体育部</option>
                <option value="4">招生办</option>
                <option value="5">咸鱼部</option>
            </select>
            <span>用户权限</span>
            <select name="priority" required="required">
                <option value="1" selected="selected">普通用户</option>
                <option value="10">管理员</option>
            </select>
            <br>
            <br>
            <input type="submit" value="确定增加">
        </form>
    </div>
</div>
<!-- <div id="bottom">
    <div class="text">Copyright ©2017-2017 WYP</div>
</div> -->
<script type="text/javascript">
    var title = getElementById("myText");
    alert(title.value);

</script>
</body>
</html>

