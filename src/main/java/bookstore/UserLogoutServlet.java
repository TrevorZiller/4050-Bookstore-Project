package bookstore;

import java.io.IOException;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebService("/logout")
public class UserLogoutServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public UserLogoutServlet() {
        super();
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession(false);
        if (session != null) {
            session.removeAttrivute("user");

            RequestDispatcher dispatcher = request.getRequestDispatcher(login.jsp);
            dispatcher.forward(request, response);
        } //if
    } //doGet
} //UserLogoutServlet