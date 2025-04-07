package com.auth;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 String fullname = request.getParameter("fullname");
	        String email = request.getParameter("email");
	        String password = request.getParameter("password");

	        try  {
	        	 Class.forName("com.mysql.jdbc.Driver");
	  		     Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/crud","root","");
	            

	            PreparedStatement ps = con.prepareStatement("INSERT INTO user (full_name, email, password_hash) VALUES (?, ?, ?)");
	            ps.setString(1, fullname);
	            ps.setString(2, email);
	            ps.setString(3, password);

	            int i=ps.executeUpdate();
	            
	           if(i>0)
	            {
	            	// response.sendRedirect("login.jsp");
	 	            
	 	           
	 	            

	 	            //response.sendRedirect("signup-success.jsp"); 
	 	           RequestDispatcher rd=request.getRequestDispatcher("signup-success.jsp");
				   rd.include(request, response);
				   
				   System.out.println("succssfully signup");
	            	
	            }
	           
	           else {
	                // Signup failed
	                response.getWriter().println("Signup failed.");
	                System.out.println("Failed to signup");
	                
	               
	            }
	            //response.sendRedirect("login.jsp");
	            
	            //response.sendRedirect("login.jsp");
	            
	            

	           // response.sendRedirect("signup-success.jsp"); 

	            
	            
	        } catch (Exception e) {
	            e.printStackTrace();
	            System.out.println("Ex "+e);
	            response.getWriter().println("Signup failed.");
	        }
		doGet(request, response);
	}

}
