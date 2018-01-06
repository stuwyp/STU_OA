<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!doctype html>
<html>
<head dir="ltr">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="css/login.css">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>办公自动化登陆</title>
</head>

<body>
	<%
		if (session.getAttribute("username") != null) {
	%>
	已登录，用户名：<%=session.getAttribute("username")%>
	<%
		response.setStatus(HttpServletResponse.SC_MOVED_PERMANENTLY);
			String newLocation = request.getContextPath()
					+ "/loginsuccess.jsp";
			response.setHeader("Location", newLocation);
		}
	%>

	<div class="form-wrapper " id="login-form">
		<div align="center" style="padding: 20px">
			<img src="img/stu-logo-new.png">
		</div>

		<form id="fm1" class="login-form fm-v clearfix"
			action="<%=request.getContextPath()%>/DoLoginServlet" method="post">
			<div class="section-title lines">
				<h2>
					<span class="text">登陆</span>
				</h2>
			</div>

			<div>&nbsp;</div>
			<div class="form-field email-email">
				<label for="login-email"> 用户名: </label> <input id="username"
					name="username" class="required textinput" tabindex="1" type="text"
					value="" autocomplete="off">

			</div>

			<div class="form-field password-password">
				<label for="login-password"> 密 码: </label> <input id="password"
					name="password" class="required textinput" tabindex="2"
					type="password" value="" autocomplete="off">
			</div>
			<div id="login_error" class="errors" style="display: none">您提供的凭证有误。</div>
			<div>&nbsp;</div>
			<input class="login-button" id="login" accesskey="l" value="登录"
				tabindex="4" type="submit">

		</form>
	</div>

	<div id="banner_root">
		<ul id="banner_show">
		</ul>
	</div>
	<div align="center">Copyright ©2017-2017 WYP. All Rights Reserved</div>
	<script type="text/javascript">
	<%if (request.getParameter("state") != null) {
	%>
					
		document.getElementsByClassName("errors")[0].style.display = "inline-block";
		console.log(document.getElementsByClass("errors")[0].style.display);
	<%}%>
		
	</script>

</body>
</html>
