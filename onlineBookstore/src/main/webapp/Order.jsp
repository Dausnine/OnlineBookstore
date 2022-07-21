<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ page import="config.*"%>
<!DOCTYPE html>
<html>

<head>
<style>
    .suppliers{
         width: 1000px; height: 100px; background-color: silver; border: 5px solid black; 
         }
  #navbar-flex{
      width: 80px; height: 30px; background-color: royalblue; border: 2px solid black; text-align: center; }
      
      h1{
       font-size:3em; }
  
  
  
  
  </style>
<title>Report Form</title>


<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body background ="images/white.jpg">


	<div id="center">
		<div class="suppliers-table">

			<h1>Sales Report</h1>
			<table border="5"  style="background-color: whitesmoke"  > 
		  
				<tr>
					<th></th>
					<th>Name</th>
					<th>Book Purchase</th>					
					<th>Email</th>
					<th>Price(RM)</th>
				</tr>
			

				<c:set var="counter" value="0" />
				<c:set var="totalSales" value="0.0" />

				<%-- Loop all purchases here --%>
				<c:forEach items="${cartList}" var="cart">
					<c:set var="counter" value="${ counter + 1}" />
					<tr>
						<td>${ counter }</td>
						<td>${ cart.customer.username }</td>
						<td>${ cart.product.name }</td>
						<td>${ cart.customer.email }</td>
						<td>${ CurrencyFormatter.format(cart.product.price) }</td>
						
					</tr>
					<c:set var="totalSales" value="${ totalSales + cart.product.price }" />
				</c:forEach>

				<tr>
					<td colspan="4"><b>Total Sales</b></td>
					<td colspan="1"><b>RM${ CurrencyFormatter.format(totalSales) }</b></td>
				</tr>

			</table>

		</div>
	</div>

	<div class="navbar">
		
			<div class="navbar-grid">
			<br>
				<a href="Logout">
					<button id="navbar-flex">Logout</button>
				</a>
				
			</div>
		
	</div>

</body>
</html>