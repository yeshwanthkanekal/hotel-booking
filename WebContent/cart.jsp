<%@page import="Home.Home"%>
<%@ page import = "java.io.*,java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" >

<head>
  <meta charset="UTF-8">
  <title>Responsive Shopping Cart</title>
  
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">

  
      <link rel="stylesheet" href="css/style.css">

  
</head>

<body>

  <h1>BASKET</h1>

<div class="shopping-cart">

  <div class="column-labels">
    <label class="product-image">Image</label>
    <label class="product-details">Product</label>
    <label class="product-price">Price</label>
    <label class="product-quantity">Quantity</label>
    <label class="product-removal">Remove</label>
    <label class="product-line-price">Total</label>
  </div>

  <form action="proceed.jsp">
    <%
    int sum1 = 0;
    List<String> Price = new ArrayList<String>();
    List<String> url = new ArrayList<String>();
    List<String> names = new ArrayList<String>();
    List<String> Pnames = new ArrayList<String>();
    Enumeration paramNames = request.getParameterNames();
    while(paramNames.hasMoreElements()) {
       String paramName = (String)paramNames.nextElement();
       
       //out.print("<tr><td>" + paramName + ", </td>\n");
       try{
       if(Integer.parseInt(paramName) > 0 && Integer.parseInt(paramName) < 16){
     	  //out.print("<p>hello fail</p>");
     	  Pnames.add(paramName);
     	  url.add(Home.getImageUrl(paramName));
     	  Price.add(Home.getPrice(paramName));
     	  names.add(request.getParameter(paramName));
       }
       }
       catch(NumberFormatException e){
    	   
       }
    }
    for(String p1:Price){
    	sum1 += Integer.parseInt(p1);
    }
    
    
    double sum2 = sum1+3.6+15;
       for(int i = 0;i < Price.size();i++){
    	   out.print("<div class='product'> <div class='product-image'>"+
    			      "<img src="+url.get(i)+">"+
    			    "</div> <div class='product-details'> <div class='product-title'>"+names.get(i)+"</div>  </div>"+
    			    "<div class='product-price'>"+Price.get(i)+"</div>"+
    			   " <div class='product-quantity'>"+
    			      "<input type='number' name="+i+" value='1' min='1'>"+
    			   " </div>"+
    			   
    			   " <div class='product-line-price'>"+Price.get(i)+"</div>"+
    			"  </div>");
       }
       //String paramValue = request.getHeader(paramName);
       //out.println("<td> " + paramValue + "</td></tr>\n");
    
    %>
      

  

  <div class="totals">
    <div class="totals-item">
      <label>Subtotal</label>
      <div class="totals-value" id="cart-subtotal">
<%
out.print(sum1);
%>

</div>
    </div>
    <div class="totals-item">
      <label>Tax</label>
      <div class="totals-value" id="cart-tax">3.60</div>
    </div>
    <div class="totals-item">
      <label>Shipping</label>
      <div class="totals-value" id="cart-shipping">15.00</div>
    </div>
    <div class="totals-item totals-item-total">
      <label>Grand Total</label>
      <div class="totals-value" id="cart-total">
      <%
out.print(sum2);
%>
      </div>
    </div>
  </div>
  <center>
      
      
      
      <%
      session.setAttribute("price1", Price);
      session.setAttribute("url1",url);
      session.setAttribute("user1",request.getParameter("user1"));
      session.setAttribute("id1",request.getParameter("id1"));
      session.setAttribute("pnames",Pnames);
      %>
      <p>DELIVERY ADDRESS: </p>
<input name="delivery" value=""></input>
<br><br><br><br>
      <input type="submit" value="CHECKOUT"/>
		</form>
		</center>
</div>
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

  

    <script  src="js/index.js"></script>




</body>

</html>
