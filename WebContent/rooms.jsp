<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.*" %>
    <%@ page import="Home.Home" %>
    
<!DOCTYPE html>
<html >
<style type="text/css">
		
	body { margin-top: 15%; margin-right: 10%; margin-left: 10%;
		background-image: url("wall12.jpg");
  	background-size: 100% 100%;
  background-attachment:fixed; }	
  h1{


font-size: 400%; color:PINK; font-family:Helvetica;
text-shadow: 25px 25px 25px #FF0000;



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
<h1>ROOMS AVAILABLE</h1>

<%
String user_name = (String)session.getAttribute("user23");
String id_1 = (String)session.getAttribute("id23");
%>
<form action="rooms2.jsp">
<input type="hidden" name="user" value=<%out.print(user_name); %>>
<input type="hidden" name="id" value=<%out.print(id_1); %>>
<input type="hidden" name="in" value=<%out.print(request.getParameter("check-in")); %>>
<input type="hidden" name="stay" value=<%out.print(request.getParameter("stay")); %>>
<input type="hidden" name="room" value=<%out.print(request.getParameter("roomtype")); %>>
<input type="submit" value="Book"/>

</form>
</center>
</body>
</html>