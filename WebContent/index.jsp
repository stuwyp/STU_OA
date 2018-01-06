<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<%@page import="myModel.Article"%>
<%@page import="java.util.List"%>
<%@page import="myDAO.NewsDAO"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html5>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="js/jquery.js" type="text/javascript"></script>
<link rel="stylesheet" type="text/css" href="css/index.css">
<title>OA</title>

</head>
<body style="border: 0px; overflow: hidden;">
	<div id="container">
		<form id="searchForm" name="searchForm" action="<%=request.getContextPath()%>/searchNews.jsp"
			method="post"> 
			<div style="height: 100px">
				<table style="width: 100%; height: 100%">
					<tr>
						<td style="width: 580px"><img src="img/logo.jpg"></td>
						<td width="*"></td>
						<td style="text-align: right;">
							<!-- 左边搜索条件-start -->
							<div style="float: left;" id="leftbutton">
								<div style="text-align: left">
									<div
										style="text-align: left; float: left; width: 250px; position: relative; overflow: hidden; height: 50px;">
										<span style="color: #834328;">发布单位：</span> 
										<select name="fwdw"
											id="fwdw" style="width: 150px;" onChange="doSearch()">
											<option value="-1">全部</option>
											<option value="汕头大学">汕头大学</option>
											<option value="党委工作部">党委工作部</option>
											<option value="党委工作部综合办公室">党委工作部综合办公室</option>
											<option value="党委工作部组宣统办公室">党委工作部组宣统办公室</option>
											<option value="本科生院">本科生院</option>
											<option value="本科生院综合办公室">本科生院综合办公室</option>
											<option value="书院总院">书院总院</option>
											<option value="研究生院">研究生院</option>
											<option value="创业学院">创业学院</option>
											<option value="创新创业研究院">创新创业研究院</option>
											<option value="行政事务部">行政事务部</option>
											<option value="教学管理服务中心">教学管理服务中心</option>
											<option value="学生培养中心">学生培养中心</option>
											<option value="招生就业办公室">招生就业办公室</option>
											<option value="校友工作办公室">校友工作办公室</option>
											<option value="汕头大学党委">汕头大学党委</option>
											<option value="财务处">财务处</option>
											<option value="汕头大学纪委">汕头大学纪委</option>
											<option value="工会">工会</option>
											<option value="教务处">教务处</option>
											<option value="科研处">科研处</option>
											<option value="学生处">学生处</option>
											<option value="人事处">人事处</option>
											<option value="校团委">校团委</option>
											<option value="党委宣传部">党委宣传部</option>
											<option value="党政办公室">党政办公室</option>
											<option value="研究生学院">研究生学院</option>
											<option value="纪委办公室">纪委办公室</option>
											<option value="监察审计处">监察审计处</option>
											<option value="资源管理处">资源管理处</option>
											<option value="党委组织统战部">党委组织统战部</option>
											<option value="图书馆">图书馆</option>
											<option value="工学院">工学院</option>
											<option value="法学院">法学院</option>
											<option value="理学院">理学院</option>
											<option value="商学院">商学院</option>
											<option value="马克思主义学院">马克思主义学院</option>
											<option value="社科部">社科部</option>
											<option value="体育部">体育部</option>
											<option value="文学院">文学院</option>
											<option value="至诚书院">至诚书院</option>
											<option value="思源书院">思源书院</option>
											<option value="知行书院">知行书院</option>
											<option value="弘毅书院">弘毅书院</option>
											<option value="淑德书院">淑德书院</option>
											<option value="修远书院">修远书院</option>
											<option value="敬一书院">敬一书院</option>
											<option value="明德书院">明德书院</option>
											<option value="德馨书院">德馨书院</option>
											<option value="继续教育学院">继续教育学院</option>
											<option value="长江艺术与设计学院">长江艺术与设计学院</option>
											<option value="艺术教育中心">艺术教育中心</option>
											<option value="长江新闻与传播学院">长江新闻与传播学院</option>
											<option value="教师发展中心">教师发展中心</option>
											<option value="英语语言中心">英语语言中心</option>
											<option value="行政事务部校园安全服务中心">行政事务部校园安全服务中心</option>
											<option value="网络与信息中心">网络与信息中心</option>
											<option value="校报编辑部">校报编辑部</option>
											<option value="学位评定委员会">学位评定委员会</option>
											<option value="华文文学编辑部">华文文学编辑部</option>
											<option value="学报编辑部">学报编辑部</option>
											<option value="高等教育研究所">高等教育研究所</option>
											<option value="招生办公室">招生办公室</option>
											<option value="汕头大学体育园">汕头大学体育园</option>
											<option value="中心实验室">中心实验室</option>
											<option value="教师发展与教育评估中心">教师发展与教育评估中心</option>
											<option value="发展规划办">发展规划办</option>
											<option value="港澳台事务办公室">港澳台事务办公室</option>
											<option value="国际交流合作处">国际交流合作处</option>
											<option value="学生创业中心">学生创业中心</option>

										</select>
										<!-- <input type="hidden" id="depart" value=""> -->
									</div>
									<!-- 搜索 -->
									<input type="submit" onclick="searchData()" name="searchBtn"
										id="searchBtn" value="" title="搜索"
										style="width: 40px; height: 20px; cursor: pointer; background: url('img/btnSearch.jpg') no-repeat center;">
								</div>

							</div> <!-- 左边搜索条件-end --> <!-- 右边图片-start -->
							<div style="float: right; cursor: pointer; overflow: hidden;"
								onClick="goURL()">
								<img id="rightimg" src="img/login.jpg" title="员工登录">
							</div> <!-- 右边图片-end -->
						</td>
					</tr>
				</table>
			</div>
			
			<TABLE class=ListStyle style="width: 100%">
				<TBODY>
					<TR class=Header>
						<TD width="60%" class="center"
							style="font-weight: bold; background: #b0782b; color: #FFF; height: 19px; padding: 4px 0;">标&nbsp;&nbsp;&nbsp;&nbsp;题</TD>
						<TD width="20%" class="center"
							style="font-weight: bold; background: #b0782b; color: #FFF; height: 19px; padding: 4px 0;">发布单位</TD>
						<TD width="20%" class="center"
							style="font-weight: bold; background: #b0782b; color: #FFF; height: 19px; padding: 4px 0;">发布日期</TD>
					</TR>
					<c:forEach items="${newsList}" var="article">
						<!-- 类型自动强转 -->
						<TR class=datalight>
							<TD width="60%" style="height: 25px;"><img class="vt"
								src="img/1.jpg" /> <a href="<%=request.getContextPath()%>/newsdetail.jsp?id=${article.getId()}" target="_blank">
									<c:out value="${fn:substring(article.getTitle(),0,36)}"></c:out>
									<%-- <c:out value="${ article.getTitle().length()> 30 }"></c:out> --%>
									<c:if test = "${ article.getTitle().length() > 36}">
										...
									</c:if>
									 </a>
							<TD width="20%" align="center"><c:out value="${ article.getDepartment() }"></c:out></TD>
							<TD width="20%" align="center"><c:out value="${ article.getDate() }"></c:out></TD>
						</TR>


					</c:forEach>

					<tr class=datalight align=right>
						<td width="100%" colspan="3">
						<span style="height: 21px; text-decoration: none; padding-top: 2px">

								共${rowCount}条记录 &nbsp; 每页10条&nbsp;

								共${pageCount}页&nbsp;&nbsp; 当前第${page}页
						</span>&nbsp; 
						<span onclick="window.location.href='<%=request.getContextPath()%>/news.jsp?page=${1}'" 
							style="width: 61px; display: inline-block; height: 21px; cursor: pointer; margin-right: 5px; text-decoration: none">
							首页
						</span>
						<span style="width: 61px; display: inline-block; height: 21px; cursor: pointer; margin-right: 5px; text-decoration: none">
							<c:if test="${page<=1 }">
								<span onclick="window.location.href='news.jsp?page=${1}'">上一页</span>
							</c:if>
							<c:if test="${page>1 }">
								<span onclick="window.location.href='news.jsp?page=${page-1}'">上一页</span>
							</c:if>
						</span> 
						<span style="width: 61px; display: inline-block; height: 21px; cursor: pointer; margin-right: 5px; text-decoration: none">
							<c:if test="${page<pageCount }">
								<a href="news.jsp?page=${page+1 }">下一页</a>
							</c:if>
							<c:if test="${page>=pageCount }">
								<a href="news.jsp?page=${pageCount }">下一页</a>
							</c:if>
						</span> 
						<input type = "hidden" id = "pageCount" value ="${pageCount}">
						<span style="line-height: 21px; height: 21px; text-decoration: none">第&nbsp;</span>
						<input style="border-bottom: #6ec8ff 1px solid; text-align: center; border-left: #6ec8ff 1px solid; line-height: 20px; padding-right: 2px; background: none transparent scroll repeat 0% 0%; height: 20px; border-top: #6ec8ff 1px solid; margin-right: 5px; border-right: #6ec8ff 1px solid; width: 30px"
							id=bottominputtext class=text onmouseover=this.select() size=3>

						<span style="line-height: 21px; height: 21px; text-decoration: none">页</span>&nbsp;

						<span style="border-bottom: medium none; text-align: center; border-left: medium none; line-height: 21px; width: 38px; display: inline-block; background: url('img/jump.png') no-repeat; height: 21px; border-top: medium none; cursor: pointer; margin-right: 5px; border-right: medium none"
							 onclick="gobottomindex()">go
						</span></td>
					</tr>
			</TABLE>
		
		</form>
		<div
			style="text-align: center; color: #834328; padding-top: 10px; font-size: 12px;">
			汕头大学 | 地址：广东省汕头市大学路243号 | 邮编：515063</div>
	</div>
	
	<script type="text/javascript">
		function pageNumberChange() {
			var sel = document.getElementById("sel");
			//alert(sel.value);
			window.location = "news.jsp?page=" + sel.value;
		}
		
		$(function() {
			$(".datalight").hover(function() {
				$(this).find("td").addClass("onbg");
			}, function() {
				$(this).find("td").removeClass("onbg");
			});
		});
		
		var _url = "login.jsp";
		
		
		function goURL() {
			window.location.href = _url;
		}
		
		
		function gobottomindex() {
		 	var inputindex = $("#bottominputtext").val();
			if (inputindex < 1) {
				inputindex = 1;
			}
			var totalindex = $("#pageCount").val();
			console.log(totalindex);
			if (inputindex > totalindex) {
				inputindex = totalindex;
			}
			window.location="news.jsp?page="+inputindex;
		/* 	$("#searchForm").submit(); */
		}
		
		function doSearch() {
			/* searchForm.fwdw.value */
			$("#searchForm").submit();
		}
		function searchData() {
			<%
			request.setAttribute("depart","书院总院");
			%>
			$("#searchForm").submit();
		}
	</script>
</body>
</html>

