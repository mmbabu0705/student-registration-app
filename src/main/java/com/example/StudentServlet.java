@WebServlet("/register")
public class StudentServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws IOException, ServletException {

        String name = req.getParameter("name");
        String email = req.getParameter("email");
        String course = req.getParameter("course");
        String phone = req.getParameter("phone");

        // Send form values to success.jsp
        req.setAttribute("name", name);
        req.setAttribute("email", email);
        req.setAttribute("course", course);
        req.setAttribute("phone", phone);

        req.getRequestDispatcher("success.jsp").forward(req, resp);
    }
}
