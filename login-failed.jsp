<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login Failed</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background-color: #ffebee;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
            margin: 0;
        }
        .error-box {
            background-color: #fff;
            padding: 40px;
            border-radius: 12px;
            box-shadow: 0 8px 16px rgba(0,0,0,0.1);
            text-align: center;
        }
        h2 {
            color: #d32f2f;
        }
        p {
            color: #555;
        }
        a {
            display: inline-block;
            margin-top: 20px;
            text-decoration: none;
            background-color: #d32f2f;
            color: white;
            padding: 12px 24px;
            border-radius: 8px;
            transition: 0.3s;
        }
        a:hover {
            background-color: #b71c1c;
        }
    </style>
</head>
<body>

<div class="error-box">
    <h2>Login Failed</h2>
    <p>Incorrect email or password. Please try again or sign up for a new account.</p>
    <a href="signup.jsp">Go to Signup</a>
</div>

</body>
</html>
