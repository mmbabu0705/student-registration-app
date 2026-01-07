package com.example;

import java.io.IOException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet("/register")
public class StudentServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws IOException {

        String name = req.getParameter("name");
        String email = req.getParameter("email");
        String course = req.getParameter("course");
        String phone = req.getParameter("phone");

        resp.setContentType("text/html");
        resp.getWriter().println(
            "<h2>Registration Successful</h2>"
          + "<p><b>Name:</b> " + name + "</p>"
          + "<p><b>Email:</b> " + email + "</p>"
          + "<p><b>Course:</b> " + course + "</p>"
          + "<p><b>Phone:</b> " + phone + "</p>"
          + "<a href='register.jsp'>Back</a>"
        );
    }
}
