<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.*" %>
    <%@ page import="Home.Home" %>
    
<!DOCTYPE html>
<html>
<style type="text/css">
		
	body { margin-top: 15%; margin-right: 10%; margin-left: 10%;
		background-image: url("wall13.png");
  	background-size: 100% 100%;
  background-attachment:fixed; }	
  h1{


font-size: 400%; color:black; font-family:Helvetica;




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
<body>
<center>
<h1>ROOMS BOOKED</h1>
</center>
<%
Home.bookOrder(request.getParameter("user"),request.getParameter("id"), request.getParameter("in"), request.getParameter("stay"), request.getParameter("room"));
%>
</body>
</html>