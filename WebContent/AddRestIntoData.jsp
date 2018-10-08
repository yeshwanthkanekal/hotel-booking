<%@page import="Home.Home"%>
<%@ page import = "java.io.*,java.util.*,java.text.NumberFormat,java.math.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" >
<body>
<h1>SUCCESSFULLY ADDED TO DATABASE</h1>
<%
//NumberFormat nf = NumberFormat.getCurrencyInstance();

//out.print(request.getParameter("id"));
Home.restIntoData(request.getParameter("id"), request.getParameter("name"), request.getParameter("locality")+" "+request.getParameter("address"), request.getParameter("menu_link"), request.getParameter("phone"));
%>
</body>
</html>