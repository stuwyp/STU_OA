<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet" type="text/css" href="css/addnews.css">
<title>删除公告</title>
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
				<li><a href="javascript:viod(0)" class="detail">删除公告</a></li>
			</ul>
		</div>
	</div>
	<div id="content">
		<div class="form">
			<form action="<%=request.getContextPath()%>/DeleteNewsServlet"
				method="post">
				<input type="text" name="title" required="required"> <input
					type="submit" value="删除">
			</form>
		</div>
	</div>
	<div id="bottom">
		<div class="text">Copyright ©2017-2017 WYP</div>
	</div> 
	
</body>
</html>
<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

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
		<form id="searchForm" name="searchForm" action="newsSearch.jsp"
			method="post">
			

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
								src="img/1.jpg" /> <a href="<%=request.getContextPath()%>/newsdetail.jsp?id=${article.getId() }">
									<c:out value="${fn:substring(article.getTitle(),0,30)}"></c:out>
									<c:if test = "article.getTitle().length() > 30">
										<c:out value="..."></c:out>
										<c:out value="article.getTitle().length()"></c:out>
									</c:if>
									 </a>
							<TD width="20%" align="center"><c:out value="${ article.getDepartment_id() }"></c:out></TD>
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
						<span style="line-height: 21px; height: 21px; text-decoration: none">第&nbsp;</span>
						<input style="border-bottom: #6ec8ff 1px solid; text-align: center; border-left: #6ec8ff 1px solid; line-height: 20px; padding-right: 2px; background: none transparent scroll repeat 0% 0%; height: 20px; border-top: #6ec8ff 1px solid; margin-right: 5px; border-right: #6ec8ff 1px solid; width: 30px"
							id=bottominputtext class=text onmouseover=this.select() size=3>

						<span style="line-height: 21px; height: 21px; text-decoration: none">页</span>&nbsp;

						<span style="border-bottom: medium none; text-align: center; border-left: medium none; line-height: 21px; width: 38px; display: inline-block; background: url('img/jump.png') no-repeat; height: 21px; border-top: medium none; cursor: pointer; margin-right: 5px; border-right: medium none"
							id=-weavertable-0-gopage onclick="gobottomindex()">go
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
		var pageindex = 1;
		var totalindex = 1069;
		var _url = "login.jsp";
		$(window).load(
				function() {
					$(".text").val(pageindex);
					if (pageindex == 1) {
						$(".weaverTablePrevPage").addClass(
								"weaverTablePrevPageOfDisabled");
					}
					if (pageindex >= totalindex) {
						$(".weaverTableNextPage").addClass(
								"weaverTableNextPageOfDisabled");
					}
					var _imgw = $("#rightimg").width() + 20;
					var _tdbuttonw = $("#leftbutton").parent().width();
					$("#leftbutton").width((_tdbuttonw - _imgw) + "px");
				});
		function previousPage() {
			if (pageindex == 1) {
				return;
			} else {
				document.getElementById("pageindex").value = pageindex - 1;
				document.getElementById("searchForm").submit();
			}
		}
		function nextPage() {
			if (pageindex >= totalindex) {
				return;
			} else {
				document.getElementById("pageindex").value = pageindex + 1;
				document.getElementById("searchForm").submit();
			}
		}
		function gotopindex() {
			var inputindex = $("#topinputtext").val();
			if (inputindex < 1) {
				inputindex = 1;
			}
			if (inputindex > totalindex) {
				inputindex = totalindex;
			}
			$("#pageindex").val(inputindex);
			$("#searchForm").submit();
		}
		function gobottomindex() {
			var inputindex = $("#bottominputtext").val();
			if (inputindex < 1) {
				inputindex = 1;
			}
			if (inputindex > totalindex) {
				inputindex = totalindex;
			}
			$("#pageindex").val(inputindex);
			$("#searchForm").submit();
		} 
		function goURL() {
			window.location.href = _url;
		}

		function doSearch() {
			$("#pageindex").val("1");
			$("#searchForm").submit();
		}
		function searchData() {
			$("#pageindex").val("1");
			$("#searchForm").submit();
		}
	</script>
</body>
</html>

 --%>