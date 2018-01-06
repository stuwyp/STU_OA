package myFilter;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebFilter("/LoginFilter")
public class LoginFilter implements Filter {

	private List<String> list;
	private List<String> forbidList;

	
	public LoginFilter() {
	}

	public void destroy() {
	}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		 
		HttpServletRequest req = (HttpServletRequest) request;
		HttpServletResponse rep = (HttpServletResponse) response;
		HttpSession session = req.getSession();
		StringBuffer paths = req.getRequestURL();
		String path = paths.toString();
		int lastIndex = path.lastIndexOf("/");// 寻找 / 最后一次出现的位置
		String newPath = path.substring(lastIndex);
		//放行基本界面
		if (path.contains(".jpg") || path.contains(".png") || path.contains(".css") || list.contains(newPath)) {// 包含指定的页面则放行，否则调到指定界面
			chain.doFilter(request, response);
			return;
		}
		
		if (forbidList.contains(newPath)) {
			rep.sendRedirect(req.getContextPath() + "/main.jsp");
		}
		
		String username = (String) session.getAttribute("username");
		if (username != null) {
			// 如果请求信息中包含用户名，则放行。
			chain.doFilter(request, response);
		} else {
			rep.sendRedirect(req.getContextPath() + "/login.jsp");
		}
	}

	public void init(FilterConfig fConfig) throws ServletException {
		// 放行列表里面所有的页面
		list = new ArrayList<>();
		list.add("/login.jsp");
		list.add("/main.jsp");
		list.add("/newsdetail.jsp");
		list.add("/news.jsp");
		list.add("/searchNews.jsp");
		list.add("/DoLoginServlet");
		
		forbidList = new ArrayList<>();
		forbidList.add("/index.jsp");
	}
}

