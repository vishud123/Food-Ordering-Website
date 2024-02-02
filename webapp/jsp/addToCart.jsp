<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Add to cart</title>
</head>
<body>
<%@ page import="java.sql.*, java.util.Random"%>
<%@page import="java.io.PrintStream"%>
<%
%>
<%  String input=request.getParameter("p");          //p is the id of the food item 
	
    int selectedID=0;
    
    try{ 
    	selectedID=Integer.parseInt(request.getParameter("p"));        //passing the id from p to selectedID and convert it from string to int
    	
       }catch(NumberFormatException ex)
    		{	
    			/////System.err.println("Ilegal input");
    		}
	try{
	
		Class.forName("com.mysql.jdbc.Driver");
   	
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinefoodorderdb?autoReconnect=true&useSSL=false","root","pass123"); 
   		
			Statement st=con.createStatement();
   			ResultSet rs;
   			PreparedStatement ps;
   	
   			Integer order_id;
   			String order_id_key = new String("order id");
   		
   			if (session.getAttribute("order_id_key")==null)
   			{
  				order_id=  new Random().ints(1, 100).findFirst().getAsInt();
  				session.setAttribute("order_id_key", order_id);
	  		} 
   				
   				order_id=(Integer)session.getAttribute("order_id_key");
   				
				if((selectedID>=1)&&(selectedID<=8))
   				{	
   					rs=st.executeQuery("select * from food where food_id='"+selectedID+"'");
   					
   					rs.next();
   					
   						int food_id=rs.getInt(1);
   						String food_name=rs.getString(2);
   						int food_price=rs.getInt(3);
   						
   						
   						session.setAttribute("food_id_key", food_id);
   						session.setAttribute("food_name_key", food_name);
   						session.setAttribute("food_price_key", food_price);
   			
   					ps=con.prepareStatement("insert into foodorder values(0,?,?,?,?)");  
   			
   			 		
   					
   						int totalPrice=food_price;
   			 			
   			 			
   						ps.setInt(1, order_id);				
   						ps.setInt(2, food_id);
   						ps.setInt(3, 1);
   						ps.setInt(4, totalPrice);
	   				
   						ps.executeUpdate();  
   		
	   				response.sendRedirect("welcome.jsp"); 
				}
   			 	else if((selectedID>=101)&&(selectedID<=104)) 
   				{
					rs=st.executeQuery("select * from drinks where drink_id='"+selectedID+"'");
   			
					rs.next();
					
   					int drink_id=rs.getInt(1);
   					String drink_name=rs.getString(2);
   					int drink_price=rs.getInt(3);
   			
   			
   						session.setAttribute("drink_id", drink_id);
   						session.setAttribute("drink_name", drink_name);
   						session.setAttribute("drink_price", drink_price);
   						
  
   					ps=con.prepareStatement("insert into drinkorder values(0,?,?,?,?)");   
   			
   			
   					 int totalPrice=drink_price;
   					
   					
   						ps.setInt(1, order_id);				
   						ps.setInt(2, drink_id);
   						ps.setInt(3, 1);
   						ps.setInt(4, totalPrice);
   		 
   		          
   					ps.executeUpdate(); 
   					response.sendRedirect("welcome.jsp"); 
   		} 		
				Statement st1=con.createStatement();
   				Statement st2=con.createStatement();
				ResultSet rs1=st1.executeQuery("select count(*) as drinkno from drinkorder where order_id='"+order_id+"'");
				ResultSet rs2=st2.executeQuery("select count(*) as foodno from foodorder where order_id='"+order_id+"'");
				rs1.next(); rs2.next();
				int dno=rs1.getInt("drinkno");
				int fno=rs2.getInt("foodno");
				int no_of_items=dno+fno;
				
				session.setAttribute("no_of_items_key", no_of_items);
   				con.close();
	}catch(Exception e){ 
		e.printStackTrace();
						}
   	
   %>
</body>
</html>