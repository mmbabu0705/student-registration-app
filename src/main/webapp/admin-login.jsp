<html>
<head>
<title>Admin Login</title>

<style>
body {font-family: Arial; background:#eee;}
.box {
  width: 380px;
  margin: 70px auto;
  background:white;
  padding:25px;
  border-radius:12px;
  box-shadow:0 0 15px rgba(0,0,0,.2);
}
input {width:100%;padding:8px;margin:8px 0;border-radius:6px;border:1px solid #ccc;}
button {width:100%;padding:10px;background:#4CAF50;color:white;border:none;border-radius:6px;cursor:pointer;}
button:hover {background:#2e8b57;}
h2{text-align:center;}
</style>
</head>

<body>
<div class="box">

<h2>Admin Login</h2>

<form action="adminLogin" method="post">
    <label>Username</label>
    <input type="text" name="username" required>

    <label>Password</label>
    <input type="password" name="password" required>

    <button type="submit">Login</button>
</form>

</div>
</body>
</html>
