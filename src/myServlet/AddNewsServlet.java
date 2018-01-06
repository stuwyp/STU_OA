package myServlet;

import java.sql.Date;
//import java.text.SimpleDateFormat;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import myDAO.NewsDAO;
import myUtil.DateUtil;

@WebServlet("/AddNewsServlet")
public class AddNewsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public AddNewsServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// 防止中文乱码，设置字符集
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charSet=utf-8");
		
		String repath = "";
		String title = "default";
		String content = "default";
		int department_id = 0;
		Date date = null;
		
		repath = request.getContextPath();// 获取当前路径上下文
		title = request.getParameter("title");
		content = request.getParameter("content");
		department_id = Integer.parseInt(request.getParameter("department_id"));
		
		try {
			date = DateUtil.formatString(request.getParameter("date"), "yyyy-MM-dd");
		} catch (Exception e) {
			e.printStackTrace();
		}
	
		NewsDAO news = new NewsDAO();
		int affect = news.addArticle(title, content, department_id, date); // affect表示影响的行数
		response.sendRedirect(repath + "/news.jsp");

	}
}
