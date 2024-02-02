package com.foodcart;

//import java.sql.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
//import java.sql.ResultSet;
//import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



/**
 * Servlet implementation class registerInput
 */
@WebServlet("/registerInput")


public class RegisterInput extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	String name, address, email, password;
	
    
	/**
     * @see HttpServlet#HttpServlet()
     */
    
	public RegisterInput() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
	 
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		PrintWriter out=response.getWriter();
	
		name=request.getParameter("name");
		//out.println(name);
		password=request.getParameter("password");
		//out.println(password);
		address=request.getParameter("address");
		//out.println(address);
		email=request.getParameter("email");
		//out.println(email);
		
		response.setContentType("text/html");  
		
		          
		try{  
			Class.forName("com.mysql.jdbc.Driver");  
			
			Connection con=DriverManager.getConnection(  
				"jdbc:mysql://localhost:3306/onlinefoodorderdb?autoReconnect=true&useSSL=false","root","pass123");  
		   
			PreparedStatement ps=con.prepareStatement(  
					"insert into customer values(LAST_INSERT_ID(),?,?,?,?)");  
			//cID=createID();
			
				//ps.setInt(1, cID); 
				ps.setString(1, name);				
				ps.setString(2, email);
				ps.setString(3, password);
				ps.setString(4, address);
		 
		          
		int i=ps.executeUpdate();  
		 
//		out.print("You are successfully registered...");  
		if(i>0) 
		{
		response.sendRedirect("index.html");  
		}
		}
		catch (Exception e2) 
		{
			System.out.println(e2);
		}  
		          
		out.close();  
		}  
	}

	