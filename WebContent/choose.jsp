<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<% request.setCharacterEncoding("utf-8");%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<!-- <link rel="stylesheet" type="text/css" href="css/choose.css"> -->
<title>登陆成功</title>
</head>
<body>
	<div id="head">
		<div class="logo">
			<!-- <img src="picture/logo.png"> -->
		</div>
		<div class="title">
			<span>办公自动化系统</span>
		</div>
	</div>
	<div id="nav">
		<div class="navblock">
			<ul>

			</ul>
		</div>
	</div>
	<%
		String optionstr = request.getParameter("option");
		int option = Integer.valueOf(optionstr);
		request.setAttribute("option", option);
	%>
	<c:if test="${ option == 1 }">
		<div id="login">
			<div class="choose">
				<a href="<%=request.getContextPath()%>/addnews.jsp?type=0">公告</a>
			</div>
		</div>
	</c:if>
	<c:if test="${ option == 2 }">
		<div id="login">
			<div class="choose">
				<a href="<%=request.getContextPath()%>/deletenews.jsp?type=0">公告</a>
			</div>
		</div>
	</c:if>
	<c:if test="${ option == 3 }">
		<div id="login">
			<div class="choose">
				<a href="<%=request.getContextPath()%>/updatenews.jsp?type=0">公告</a>
			</div>
		</div>
	</c:if>
	<div id="bottom">
		<div class="text">Copyright ©2017-2017 WYP</div>
	</div>
</body>
</html>
