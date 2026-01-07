<%@ page session="true" %>

<%
Boolean isAdmin = (Boolean) session.getAttribute("isAdmin");
if (isAdmin == null || !isAdmin) {
    response.sendRedirect("admin-login.jsp");
    return;
}
%>

<html>
<head>
<title>Admin Dashboard</title>

<style>
body {font-family: Arial;background:#222;color:#fff;}
.box{
  width:420px;margin:70px auto;background:#333;
  padding:25px;border-radius:12px;
}
a.btn{
  display:block;
  padding:12px;
  margin-top:10px;
  background:#2196F3;
  color:white;
  text-decoration:none;
  text-align:center;
  border-radius:8px;
}
a.btn:hover{background:#0b7dda;}
.logout{background:#f44336;}
</style>
</head>

<body>
<div class="box">

<h2>Admin Dashboard</h2>

<a class="btn" href="downloadExcel">⬇ Download Excel Sheet</a>

<a class="btn logout" href="admin-logout.jsp">Logout</a>

</div>
</body>
</html>
