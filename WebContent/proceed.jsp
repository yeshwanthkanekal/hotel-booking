<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.*" %>
    <%@ page import="Home.Home" %>


    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
    <html>
    <head>
    <style type="text/css">
		
	body { margin-top: 15%; margin-right: 10%; margin-left: 10%;
		background-image: url("wall14.jpg");
  	background-size: 100% 100%;
  background-attachment:fixed; }	
  h1{


font-size: 200%; color:PINK; font-family:Helvetica;




}
 h2{


font-size: 200%; color:PINK; font-family:Helvetica;

text-shadow: 5px 5px 5px #FF0000;

}
h6{
font-size: 150%; color:PINK; font-family:Helvetica;
text-shadow: 5px 5px 5px #FF0000;
}
	h3{ font-size: 200%;
	text-shadow: 3px 3px 3px #FFFFFF;}

p{font-size: 200%; color:white;
	text-shadow: 2px 2px 2px #000000;}
	
  
 </style>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Order Placed</title>


    	</head>
    	<body >

    	<br><br><br>

    	<%
    	ArrayList<String> price = (ArrayList<String>)session.getAttribute("price1");
    	ArrayList<String> id1 = (ArrayList<String>)session.getAttribute("pnames");
    	String user = (String)session.getAttribute("user1");
    	String id = (String)session.getAttribute("id1");
    	if(request.getParameter("delivery").equals("")){
    		out.print("<center><h1>Please enter a delivery address</h1></center>");
    	}
    	else{
    	for(int i=0;i<price.size();i++){
          Home.placeOrder(user,id,id1.get(i),request.getParameter("delivery"),Integer.parseInt(price.get(i)),request.getParameter(""+i));
    	}
          out.print("<div align=\"center\"> <h1 align=\"center\"> Your order is placed and will be delivered to you in one hour at "+request.getParameter("delivery")+"</h1><br><br><br></div>");
    	}
    	%>



    </body>
    </html>



