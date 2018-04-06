<%@ page import="myDAO.NewsDAO" %>
<%@ page import="myModel.Article" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: Kazami Hatsuroku
  Date: 2018/1/7
  Time: 13:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <style>
        table {
            width: 80%;
            text-align: center;
        }
    </style>
    <title>查询结果</title>
</head>
<body>
    <%
        String title = null;
        String content = null;
        int department_id = 0;


        if (!request.getParameter("title").equals("")) {
            title = request.getParameter("title");
        }
        if (!request.getParameter("department_id").equals("")) {
            department_id = Integer.parseInt(request.getParameter("department_id"));
        }
        if (!request.getParameter("content").equals("")) {
            content = request.getParameter("content");
        }

        int searchMethod = Integer.parseInt(request.getParameter("search_method"));
        NewsDAO newsQuery = new NewsDAO();
        List<Article> articles = new ArrayList();

        switch (searchMethod) {
            case 1:
                articles = newsQuery.getArticlesByTitle(title);
                break;
            case 2:
                articles = newsQuery.getArticlesByDepart(department_id);
                break;
            case 3:
                articles = newsQuery.getArticlesByContent(content);
                break;
            default:
                break;
        }
    %>
    <table>
        <tr>
            <th>新闻标题</th>
            <th>新闻发表部门</th>
            <th>新闻发布日期</th>
        </tr>
        <%
            for (int i = 0; i < articles.size(); i++) {
                Article article = articles.get(i);
        %>
            <tr>
            <td><a href="<%=request.getContextPath()%>/newsdetail.jsp?id=<%=article.getId()%>"><%=article.getTitle()%></a></td>
            <td><%=article.getDepartment_id()%></td>
            <td><%=article.getDate()%></td>
            </tr>
        <%
            }
        %>
</body>
</html>
