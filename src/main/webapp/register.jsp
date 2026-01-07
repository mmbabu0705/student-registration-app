<html>
<head>
    <title>Student Registration Form</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(120deg,#4f9cff,#42e6a4);
            margin: 0;
            padding: 0;
        }

        .container {
            width: 450px;
            margin: 50px auto;
            background: #ffffff;
            padding: 25px;
            border-radius: 15px;
            box-shadow: 0 0 20px rgba(0,0,0,0.3);
        }

        h2 {
            text-align: center;
            color: #333;
        }

        label {
            font-weight: bold;
            color: #444;
        }

        input, select, textarea {
            width: 100%;
            padding: 8px;
            margin-top: 5px;
            margin-bottom: 12px;
            border-radius: 6px;
            border: 1px solid #ccc;
        }

        textarea {
            resize: none;
            height: 70px;
        }

        button {
            width: 100%;
            background: #4CAF50;
            color: #fff;
            padding: 10px;
            border: none;
            border-radius: 8px;
            font-size: 16px;
            cursor: pointer;
        }

        button:hover {
            background: #2e8b57;
        }
    </style>
</head>

<body>

<div class="container">

<h2>Student Registration Form</h2>

<form action="register" method="post">

    <label>Student Name:</label>
    <input type="text" name="name" required>

    <label>Father Name:</label>
    <input type="text" name="fatherName" required>

    <label>Date of Birth:</label>
    <input type="date" name="dob" required>

    <label>Gender:</label>
    <select name="gender" required>
        <option value="">-- Select --</option>
        <option>Male</option>
        <option>Female</option>
        <option>Other</option>
    </select>

    <label>Course:</label>
    <input type="text" name="course" required>

    <label>Email Address:</label>
    <input type="email" name="email" required>

    <label>Phone Number:</label>
    <input type="text" name="phone" required>

    <label>Address:</label>
    <textarea name="address" required></textarea>

    <button type="submit">Register</button>

</form>

</div>

</body>
</html>
