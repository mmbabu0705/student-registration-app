<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Registration Success</title>

    <style>
        body {
            font-family: Arial;
            background: linear-gradient(120deg,#ff9966,#ff5e62);
            margin: 0;
        }
        .box {
            width: 480px;
            margin: 60px auto;
            background: #fff;
            padding: 25px;
            border-radius: 15px;
            box-shadow: 0 0 20px rgba(0,0,0,.3);
        }
        h2 { text-align:center; color:#333; }
        p { font-size:14px; }
        b { color:#444; }
        a {
            display:block;
            margin-top:15px;
            text-align:center;
            padding:10px;
            background:#4CAF50;
            color:white;
            text-decoration:none;
            border-radius:8px;
        }
        a:hover { background:#2e8b57; }
    </style>
</head>

<body>

<div class="box">
<h2>🎉 Registration Successful</h2>

<p><b>Student Name:</b> ${name}</p>
<p><b>Father Name:</b> ${fatherName}</p>
<p><b>Date of Birth:</b> ${dob}</p>
<p><b>Gender:</b> ${gender}</p>
<p><b>Course:</b> ${course}</p>
<p><b>Email:</b> ${email}</p>
<p><b>Phone:</b> ${phone}</p>
<p><b>Address:</b> ${address}</p>

<a href="register.jsp">⬅ Go Back</a>
</div>

</body>
</html>
