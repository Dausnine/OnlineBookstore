<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ page import="config.*"%>
<!DOCTYPE html>
<html>
<head>
<style>
    .product{
         width: 1000px; height: 350px; background-color: silver; border: 5px solid black; margin: auto;
         }
  .buy{
      width: 100px; height: 30px; background-color: royalblue; border: 2px solid black}
      
      h1{
       font-size:3em; text-align: center;}
    
    .grid-item{
        width: 1000px; height: 250px; background-color: powderblue; border: 3px solid black; margin: auto }
  
  
  
  
  </style>
<meta charset="ISO-8859-1">
<title>Purchase List</title>
</head>
<body background ="images/white.jpg">


	<div id="center">
		<div class="products-table">
     <h1>PURCHASE LIST</h1>
			<c:set var="totalPrice" value="0.0" />

			<%-- Loop all products in cart here --%>
			<c:forEach items="${cartList}" var="cart">

				<form class="product" action="cart" method="post">
					<input type="hidden" name="cartActivity" value="removeFromCart">
					<input type="hidden" name="cartId" value="${ cart.id }"> <img
						src="${ cart.product.image }" alt="product-image"  width="200" height="200">

					<div class="product-desc">
                        <b>Book name:</b><span class="product-name">${cart.product.name}</span><br>
						<b>Book description:</b><span class="product-description">${cart.product.description} </span><br>
						<b>Book publish:</b><span class="product-publish">${cart.product.publish} </span><br>
						 <b>Category:</b><span class="product-category">${cart.product.category} </span><br>
		

						<%-- 
						<span class="product-buttons">
							<button>Remove From Cart</button>
						</span>
						--%>
					</div>
				</form>

				<c:set var="totalPrice" value="${ totalPrice + cart.product.price }" />
            <c:set var="customerEmail" value="${ cart.customer.email }" />
			</c:forEach>

		</div>
	</div>

	<div id="cart-footer">
		<div class="grid-item">
		<h2>CUSTOMER INFORMATION:</h2>
			<h2><b>Name: ${ username } <br> Phone: ${ phone } <br> Email Address: ${ customerEmail }
			<br> Shipping Method: via Email</b></h2>
  
		

			<%-- Check if there is item in cart --%>
			
			          <a href="order">
						<button class="buy">Sales Report</button>
						</a>	
			            <a href="Logout">
						<button class="buy">Logout</button>
						</a>	
					

		
	</div>
</body>
</html>