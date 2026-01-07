<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Registration Success</title>
</head>
<body>
<h2>🎉 Student Registration Successful</h2>

<p><b>Name:</b> <%= request.getParameter("name") %></p>
<p><b>Email:</b> <%= request.getParameter("email") %></p>
<p><b>Course:</b> <%= request.getParameter("course") %></p>
<p><b>Phone:</b> <%= request.getParameter("phone") %></p>

<br>
<a href="register.jsp">⬅ Go Back to Registration</a>

</body>
</html>
