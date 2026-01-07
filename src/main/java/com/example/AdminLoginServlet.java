package com.example;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/adminLogin")
public class AdminLoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws IOException, ServletException {

        String user = req.getParameter("username");
        String pass = req.getParameter("password");

        // 🔐 Simple static admin credentials
        if (user.equals("admin") && pass.equals("admin123")) {

            HttpSession session = req.getSession();
            session.setAttribute("isAdmin", true);

            resp.sendRedirect("admin-dashboard.jsp");

        } else {
            req.setAttribute("error", "Invalid Login");
            req.getRequestDispatcher("admin-login.jsp").forward(req, resp);
        }
    }
}
