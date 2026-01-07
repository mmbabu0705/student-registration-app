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
        String fatherName = req.getParameter("fatherName");
        String dob = req.getParameter("dob");
        String gender = req.getParameter("gender");
        String course = req.getParameter("course");
        String email = req.getParameter("email");
        String phone = req.getParameter("phone");
        String address = req.getParameter("address");

        // Send values to success.jsp
        req.setAttribute("name", name);
        req.setAttribute("fatherName", fatherName);
        req.setAttribute("dob", dob);
        req.setAttribute("gender", gender);
        req.setAttribute("course", course);
        req.setAttribute("email", email);
        req.setAttribute("phone", phone);
        req.setAttribute("address", address);

        req.getRequestDispatcher("success.jsp").forward(req, resp);
    }
}
