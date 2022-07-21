<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="config.*"%>
<!DOCTYPE html>
<html>
<head>
<style>
    .suppliers{
         width: 1000px; height: 100px; background-color: silver; border: 5px solid black; margin: auto;
         }
  .navbar-flex{
      width: 100px; height: 50px; background-color: royalblue; border: 2px solid black;  }
      
      h1{
       font-size:3em; text-align: center;}
       
       .navbar{
          width: 80px; height: 40px; background-color: limegreen; border: 2px solid black; margin: auto;}
  
       .navbar-delete{
         width: 80px; height: 40px; background-color: red; border: 2px solid black; margin: auto;}
  
  
  </style>
<meta charset="ISO-8859-1">
<title>Book Table</title>
</head>
<body background ="images/white.jpg">
	

	<div id="center">
		<div class="products-table">

			<h1>Books Table</h1>

			<table border="5"  style="background-color: whitesmoke" align="center" ;>
				<tr>
					<th>Book Id</th>
					<th>Book Image</th>
					<th>Book Name</th>
					<th>Book Description</th>
					<th>Year Publish</th>
					<th>Category</th>
					<th>Price(RM)</th>
					<th>Quantity </th>
					<th>Update</th>
					<th>Delete</th>
				</tr>

				<%-- Loop all products here --%>
				<c:forEach items="${productList}" var="product">
					<tr>
						<td>${ product.id }</td>
						<td>
							<img class="product-image" src="${ product.image }"
								alt="product-image" width="200" height="200">
						</td>
						<td>${ product.name }</td>
						<td>${ product.description }</td>
						<td>${ product.publish }</td>
						<td>${ product.category }</td>
						<td>${  CurrencyFormatter.format(product.price) }</td>
						<td>${ product.quantity }</td>
						<td>
							<a href="product?updateProduct=true&productId=${ product.id }">
								<button id="${ product.id }" class="navbar">Update</button>
							</a>
						</td>
						<td>
						<a href="product?deleteProduct=true&productId=${ product.id }" >
							 <button id="${ product.id }" class="navbar-delete">Delete</button>
						</a>
						</td>
					</tr>
				</c:forEach>

			</table>

		</div>
	</div>

	
		
		<div class="navbar-grid">
				
			
			<a href="product?addProduct=true">
				<button class="navbar-flex">Add Book</button>
			</a>			
				<a href="Logout">
				<button class="navbar-flex">Logout</button>
			</a>
		</div>
	
	
	</body>
</html>