package com.auth;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/LoginServlet1")
public class LoginServlet1 extends HttpServlet {
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//super.doPost(req, resp);
		
		String email = request.getParameter("email");
        String password = request.getParameter("password");
        
        try {
            Class.forName("com.mysql.jdbc.Driver"); 
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/crud", "root", "");

            PreparedStatement ps = con.prepareStatement("SELECT password_hash FROM user WHERE email = ?");
            ps.setString(1, email);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                String storedPassword = rs.getString("password_hash");

                if (password.equals(storedPassword)) {
                    // Login success
                    RequestDispatcher rd = request.getRequestDispatcher("login-success.jsp");
                    rd.forward(request, response);
                    
                } else {
                    // Password didn't match
                    RequestDispatcher rd = request.getRequestDispatcher("login-failed.jsp");
                    rd.forward(request, response);
                    
                    
                }
            } else {
                // Email not found
                RequestDispatcher rd = request.getRequestDispatcher("login-failed.jsp");
                rd.forward(request, response);
            }
            
            
            rs.close();
            ps.close();
            con.close();

            

        } catch (Exception e) {
            //e.printStackTrace();
        	System.out.println("Ex "+e);
            response.getWriter().println("Login failed due to an error.");
            
        }
	}

}
