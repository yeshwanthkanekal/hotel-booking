<%@ page import = "java.io.*,java.util.*" %>
<%@page import="Home.Home"%>
<!DOCTYPE html>
<html>
<style type="text/css">
		
	body { margin-top: 5%; margin-right: 10%; margin-left: 10%;
		background-image: url("wall2.jpg");
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
</style>
<body>
<center>
<h1>Order Placed</h1>
</center>

<ul>
<li><p><b>
<% 
out.print("Item No's");
%>
</b>

<%
               Enumeration paramNames = request.getParameterNames();
               while(paramNames.hasMoreElements()) {
                  String paramName = (String)paramNames.nextElement();
                  out.print("<tr><td>" + paramName + ", </td>\n");
                  if(paramName != null){
                	  //out.print("<p>hello fail</p>");
                	  Home.getOrder(paramName);
                  }
                  String paramValue = request.getHeader(paramName);
                  //out.println("<td> " + paramValue + "</td></tr>\n");
               }
            %>
</p>
</li>
</ul>
<center>
<h1>Will be delivered in the next 2 hours</h1>
</center>
</body>
</html>