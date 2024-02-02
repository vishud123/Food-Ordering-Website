package com.foodcart;

//import java.sql.*;
import java.io.IOException;
//import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
//import java.io.IOException;
//import java.sql.PreparedStatement;
//import java.io.*;  
//import javax.servlet.*;  
//import javax.servlet.http.*;  
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.RequestDispatcher;

/**
 * Servlet implementation class loginCheck
 */
@WebServlet("/loginCheck")
public class LoginCheck extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	String emailID, password;
    
	/**
     * @see HttpServlet#HttpServlet()
     */
    public LoginCheck() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		 
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		//PrintWriter out=response.getWriter();
		String emailID=request.getParameter("email");
		String password=request.getParameter("password"); 
		
		try{  
			Class.forName("com.mysql.jdbc.Driver");  
			System.out.println("driver class loaded and registered");
			
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinefoodorderdb?autoReconnect=true&useSSL=false","root","pass123");  
			System.out.println("connected successfully with db");
			
			Statement stmt  =con.createStatement();
			System.out.println("platform created");
			
			//out.print("select customer_password from customer where customer_emailID='"+emailID+"'");
			//out.println(password);
			ResultSet rs=stmt.executeQuery("select * from customer where customer_emailId='"+emailID+"'"); 
				while(rs.next())
				{	
					if((rs.getString(4)).equals(password))
					{	RequestDispatcher rd=request.getRequestDispatcher("welcome.jsp");  				  
					    rd.forward(request, response);
					}	
					else
					{	//response.getWriter().append("Sorry UserName or Password Error!");  
			        	RequestDispatcher rd=request.getRequestDispatcher("loginError.html");  
			        	rd.include(request, response);  
				    }
				}	
			con.close();
		   }
		catch(Exception e)
		{  
			e.printStackTrace();
		}
		
	}
}
