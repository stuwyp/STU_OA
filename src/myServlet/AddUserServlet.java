package myServlet;

import myDAO.UserDAO;
import myModel.UserBean;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "AddUserServlet")
public class AddUserServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        int department_id = Integer.parseInt(request.getParameter("department_id"));
        int priority = Integer.parseInt(request.getParameter("priority"));
        UserDAO userQuery = new UserDAO();

        userQuery.addUser(username, password, department_id, priority);

        
        response.sendRedirect(request.getContextPath());
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
