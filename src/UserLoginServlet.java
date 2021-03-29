package bookstore;

import java.io.*;
import java.sql.SQLException;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/login")
public class UserLoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public UserLoginServlet() {
        super();
    } //UserLoginServlet

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        UserDAO userDAO = new UserDAO();

        try {
            User user = userDAO.checkLogin(email, password);
            String destPage = "login.jsp";

            if (user != null) {
                HttpSession session = request.getSession();
                session.setAttribute("user", user);
                destPage = "index.html";
            } //if
            else {
                String message = "Invalid email/password";
                request.setAttribute("message", message);
            } //else

            RequestDispatcher dispatcher = request.getRequestDispatcher(destPage);
            dispatcher.forward(request, response);
        } //try
        catch (SQLException | ClassNotFoundException ex) {
            throw new ServletException(ex);
        } //catch
    } //doPost
}// UserLoginServlet