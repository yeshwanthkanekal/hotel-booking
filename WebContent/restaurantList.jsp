<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.*" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
		
	body { margin-top: 15%; margin-right: 10%; margin-left: 10%;
		background-image: url("wall11.jpg");
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
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>


	</head>
	<body >
	<div align="center">
	<br><br><br>
	
	<%
	List<String> listOfId = new ArrayList<String>();
	List<String> listOfNames = new ArrayList<String>();
	List<String> listOfVotes = new ArrayList<String>();
	List<String> listOfLocations = new ArrayList<String>();
	List<String> listOfRatings = new ArrayList<String>();
	String locality;
	String user;
	
	listOfNames = (ArrayList)request.getAttribute("restaurantNameList");
	listOfVotes = (ArrayList)request.getAttribute("restaurantVotesList");
	listOfLocations = (ArrayList)request.getAttribute("restaurantLocationList");
	listOfRatings = (ArrayList)request.getAttribute("restaurantRatingList");
	listOfId = (ArrayList)request.getAttribute("restaurantIdList");

	
	locality = (String)request.getAttribute("locality");
	user = (String)request.getAttribute("user");

	out.print("<h1 align=\"center\">Restaurants in "+locality+"</h1><br><br><br>");
	out.print("<table>");
for (int i = 0; i < listOfNames.size(); ++i) {
		
		String id = listOfId.get(i);
		String name = listOfNames.get(i);
		String vote = listOfVotes.get(i);
		String location = listOfLocations.get(i);
		String rating = listOfRatings.get(i);
		
		out.print("<tr><td><font color=\"red\" size=\"5\">"+name+"</font></td><td><font color=\"green\" size=\"3\">"+rating+"</font></td></tr><tr><td>"+locality+"</td><td><font color=\"grey\" size=\"3\">"+vote+"</font></td></tr><tr><td><font color=\"grey\" size=\"3\">"+location+"</font></td><td></td></tr>  ");
		out.print("<tr><td><form action =\"menuItems.jsp\" method=\"post\" ><input type=\"hidden\" name=\"id\" value="+id+"><input type=\"hidden\" name=\"user\" value="+user+"><input type=submit value=\"Click for Details\" ></form></td></tr> <tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr>");
		if(user.equals("admin")){
		out.print("<tr><td><form action =\"deleteRestaurants.jsp\" method=\"post\" ><input type=\"hidden\" name=\"rest_id\" value="+id+"><input type=\"hidden\" name=\"user\" value="+user+"><input type=submit value=\"Delete Restaurant\" ></form></td></tr> <tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr>");
		}
}
	
out.print("</table>");
				
				
	%>
	
	
	

</div>

</body>
</html>