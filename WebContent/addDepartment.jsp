<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>我的公告</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charSet=utf-8");
	%>
	
	<form name="myForm"
		  action="<%=request.getContextPath()%>/AddDepartment" method="post">
		<span>用户部门</span>
		<input type="text" name="name" required="required" style="width: 50%; height: auto;">
		<input type="submit" value="确定增加">
	</form>
</body>
</html>