<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="Home.Home"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<style type="text/css">
		
	body { margin-top: 15%; margin-right: 10%; margin-left: 10%;
		background-image: url("wall10.jpg");
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
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script>

var name="";

function selectRestaurant() {
	var x = document.getElementById("myRestaurants").selectedIndex;
	var y = document.getElementById("myRestaurants").options;
	// 	    alert("Index: " + y[x].index + " is " + y[x].text);

	 name = y[x].text;
	//window.alert(name);
}
</script>


</head>
<body>

<% 
String user = request.getParameter("user");


out.println("<p>"+"User: " + user+"</p>");
%>


	<div height="50px" style="color: red">
		<h1 align="center">Food Places & Reviews</h1>
	</div>
	<div align="center">
		<h2 align="center">Select your locality</h1>


		<form method="post" action="ListRestaurants">

		<% out.print("<input type=\"hidden\" name=\"user\" value="+user+">");%>
			
			<select id="myRestaurants" name="rest">
			
				<%
					List<String> localityList = Home.getLocalities();
						
						  for(int i=0;i<localityList.size();i++){
							String s = localityList.get(i);
							out.print("<option  value=\""+s+"\">"+s+"</option>");
						//	System.out.println("<option name=\"rest\" value=\""+s+"\">"+s+"</option>");

						}  
					%>

			</select> <input type="submit" value="Submit" />
		</form>



	</div>
	<br>
	<br>

	<div></div>

	
</body>
</html>