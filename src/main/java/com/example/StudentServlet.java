package com.example;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/register")
public class StudentServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws IOException, ServletException {

        String name = req.getParameter("name");
        String email = req.getParameter("email");
        String course = req.getParameter("course");
        String phone = req.getParameter("phone");

        req.setAttribute("name", name);
        req.setAttribute("email", email);
        req.setAttribute("course", course);
        req.setAttribute("phone", phone);

        req.getRequestDispatcher("success.jsp").forward(req, resp);
    }
}
