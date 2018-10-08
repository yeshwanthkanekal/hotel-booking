<%@page import="Home.Home"%>
<%@page import="Home.RestaurantDetails"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html >
<body>
<%

Home.deleteRestaurant(request.getParameter("rest_id"));

out.print("<p>Restaurant with id "+request.getParameter("rest_id")+" deleted</p>");

%>
</body>
</html>