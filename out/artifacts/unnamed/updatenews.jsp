<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet" type="text/css" href="css/addnews.css">
<title>修改公告</title>
</head>
<body>
	<div id="head">
		<div class="logo">
			
		</div>
		<div class="title">
			<span>办公自动化系统</span>
		</div>
	</div>
	<div id="nav">
		<div class="navblock">
			<ul>
				<li><a href="javascript:void(0)" class="detail">修改公告</a></li>
			</ul>
		</div>
	</div>
		<div id="content">
		<div class="form">
			<form action="<%=request.getContextPath()%>/UpdateNewsServlet" method="post">
				<span>公告标题</span>
				<input type="text" name="title" required="required" style="width: 50%; height:auto;">
				<span>发布单位</span> 
				<input type="text" name="department_id" required="required" style="width: 50%; height:auto;">
				<span>发布时间</span> 
				<input type="date" name="date" value="2017-12-29" min="2017-01-01" max="2018-12-31" required="required" style="width: 50%; height:auto;"> 
				
				<span>公告内容</span>
				<div id="textEdit">
				<textarea rows="36" class="textarea" name="content" required="required" style="width: 100%; height:auto;"></textarea>
				</div>
				<input type="submit" value="更新">
			</form>
		</div>
	</div>
	<div id="bottom">
		<div class="text">Copyright ©2017-2017 WYP</div>
	</div>
</body>
</html>
