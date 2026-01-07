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
        h2 {
            text-align:center;
            color:#333;
        }
        p { font-size:14px; }
        b { color:#444; }

        .btn {
            display:block;
            margin-top:12px;
            padding:10px;
            text-align:center;
            border-radius:8px;
            color:#fff;
            text-decoration:none;
            font-weight:bold;
        }

        .back-btn { background:#4CAF50; }
        .back-btn:hover { background:#2e8b57; }

        .excel-btn { background:#2196F3; }
        .excel-btn:hover { background:#0b7dda; }
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

<a class="excel-btn btn" href="downloadExcel">⬇ Download Excel Sheet</a>

<a class="back-btn btn" href="register.jsp">⬅ Go Back</a>

</div>

</body>
</html>
