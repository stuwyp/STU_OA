<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@page import="myModel.Article"%>
<%@page import="java.util.List"%>
<%@page import="myDAO.NewsDAO"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet" type="text/css" href="css/newsdetail.css">
<title></title>
</head>
<body>
	<div id="head">
		<div class="logo"></div>
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
			</div>
		</c:if>
	</div>
	<div id="nav">
		<div class="navblock">
			<ul>
				<li><a href="#" class="detail">详细信息</a></li>
			</ul>
		</div>
	</div>
	<%
		int id = 1;
		try {
			id = Integer.valueOf(request.getParameter("id"));
		} catch (Exception e) {
			id = 1;
		}

		NewsDAO NewsSearch = new NewsDAO();
		Article article = new Article();
		article = NewsSearch.getArticleById(id);//根据传过来的id，查询具体的新闻信息
		request.setAttribute("article", article);
	%>
	<div id="mainbody">
		<div class="newstitle">
			<h2>
				<c:out value="${ article.getTitle() }"></c:out>
			</h2>
		</div>
		<div class="newstext">
			<p>
				<c:out value="${ article.getContent() }"></c:out>
			</p>
		</div>
	</div>
	<div id="bottom">
		<div class="text">Copyright ©2017-2017 WYP</div>
	</div>
</body>
</html>
