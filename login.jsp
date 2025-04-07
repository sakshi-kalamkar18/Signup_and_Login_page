<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<style>
  * {
    box-sizing: border-box;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
  }

  body {
    margin: 0;
    padding: 0;
    height: 100vh;
    background: linear-gradient(to right, #00c6ff, #0072ff);
    display: flex;
    justify-content: center;
    align-items: center;
    animation: fadeIn 1s ease-in-out;
  }

  @keyframes fadeIn {
    from { opacity: 0; transform: translateY(30px); }
    to { opacity: 1; transform: translateY(0); }
  }

  .login-box {
    background: #ffffff;
    padding: 40px;
    border-radius: 16px;
    box-shadow: 0 20px 40px rgba(0, 0, 0, 0.2);
    text-align: center;
    width: 100%;
    max-width: 400px;
  }

  .login-box img.logo {
    width: 60px;
    margin-bottom: 20px;
  }

  .login-box h2 {
    margin-bottom: 25px;
    color: #333;
  }

  input[type="email"],
  input[type="password"] {
    width: 100%;
    padding: 12px 15px;
    margin: 10px 0;
    border: 1px solid #ccc;
    border-radius: 10px;
    font-size: 15px;
  }

  button {
    width: 100%;
    padding: 12px;
    background: #0072ff;
    color: white;
    font-size: 16px;
    border: none;
    border-radius: 10px;
    cursor: pointer;
    margin-top: 15px;
    transition: background 0.3s ease;
  }

  button:hover {
    background: #005eea;
  }

  .links {
    margin-top: 15px;
    font-size: 14px;
  }

  .links a {
    color: #0072ff;
    text-decoration: none;
    margin: 0 8px;
  }

  .links a:hover {
    text-decoration: underline;
  }
</style>
</head>
<body>

<div class="login-box">
  <img class="logo" src="https://cdn-icons-png.flaticon.com/512/747/747376.png" alt="Login Icon" />
  <h2>Welcome Back</h2>
  <form action="LoginServlet1" method="post">
    <input type="email" name="email" placeholder="Email" required />
    <input type="password" name="password" placeholder="Password" required />
    <button type="submit">Login</button>
  </form>
  <div class="links">
    <a href="#">Forgot Password?</a> | 
    <a href="signup.jsp">Create Account</a>
  </div>
</div>

</body>
</html>
