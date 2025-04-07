<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.http.*, javax.servlet.*" %>
<%
    HttpSession sessio = request.getSession(false);
    String fullName = (session != null) ? (String) session.getAttribute("fullName") : null;
    if (fullName == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Success</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #e0ffe0;
            text-align: center;
            padding-top: 100px;
        }
        .box {
            background-color: #ffffff;
            padding: 30px;
            border-radius: 10px;
            display: inline-block;
            box-shadow: 0px 0px 10px rgba(0,0,0,0.1);
        }
        h1 {
            color: #28a745;
        }
        a {
            text-decoration: none;
            color: #007bff;
        }
    </style>
</head>
<body>
    <div class="box">
        <h1>✅ Login Successful!</h1>
        <p>Welcome, <strong><%= fullName %></strong> 🎉</p>
        <p><a href="login.jsp">Log out</a></p>
    </div>
</body>
</html>
