<%@ page import = "java.io.*,java.util.*" %>
<%@page import="Home.Home"%>
<!DOCTYPE html>
<html>
<body>

<%
				if(request.getParameter("user").equals("")){
					out.print("No user name entered");
				}
				else{
               Enumeration paramNames = request.getParameterNames();
               while(paramNames.hasMoreElements()) {
                  String paramName = (String)paramNames.nextElement();
                  //out.print("<tr><td>" + paramName + ", </td>\n");
                  
                	  //out.print("<p>hello fail</p>");
                	  Home.deleteUser(request.getParameter("user"));
                  
                  String paramValue = request.getHeader(paramName);
                  out.println("<td> " + request.getParameter("user") + " user deleted</td></tr>\n");
               }
				}
            %>
</body>
</html>