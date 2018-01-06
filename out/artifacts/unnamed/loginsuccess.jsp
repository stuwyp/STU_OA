<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet" type="text/css" href="css/loginsuccess.css">
<title>办公自动化</title>
</head>
<body>
	<div id="head">
		<div class="logo">
			<!-- 		<img src="picture/logo.png"> -->
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
				<li></li>
			</ul>
		</div>
	</div>
	<div id="login">

		<label for="add"></label>
		<div class="bt" id="add"
			onclick="window.location.href='<%=request.getContextPath()%>/addnews.jsp'">新增公告</div>

		<label for="delete"></label>
		<div class="bt" id="delete"
			onclick="window.location.href='<%=request.getContextPath()%>/deletenews.jsp'">删除公告</div>

		<label for="update"></label>
		<div class="bt" id="update"
			onclick="window.location.href='<%=request.getContextPath()%>/updatenews.jsp'">修改公告</div>


		<label for="myOffice"></label>
		<div class="bt" id="myOffice"
			onclick="window.location.href='<%=request.getContextPath()%>/myOffice.jsp'">个人办公</div>

		<label for="person"></label>
		<div class="bt" id="person"
			onclick="window.location.href='<%=request.getContextPath()%>/person.jsp'">个人信息</div>


		<label for="myEmail"></label>
		<div class="bt" id="myEmail"
			onclick="window.location.href='https://outlook.live.com/owa/'">查看邮件</div>


		<label for="back"></label>
		<div class="bt" id="back"
			onclick="window.location.href='<%=request.getContextPath()%>/news.jsp'">返回首页</div>

	</div>
	<div id="bottom">
		<div class="text">Copyright ©2017-2017 WYP</div>
	</div>
</body>
</html>
