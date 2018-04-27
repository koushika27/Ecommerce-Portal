<html>
<head>
<%@include file="Header.jsp" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<title>Order Confirmation Page</title>
</head>
<body class="bg">
   <div class="container">
	<c:url value="/thankYou" var="actionString"></c:url>
	<form:form action="${actionString}" modelAttribute="order" cssClass="form-horizontal">
	<div id="signupbox"	class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2 margin50">
		<div class="panel panel-success">
			<div class="panel-heading">
        		<div class="panel-title">Please,Confirm your order</div>
        	</div>
    <div class="panel-body">
		 <table class="table table-hover table-condensed table-responsive">
				<tr  align="center">
					<td>ProductId</td>
					<td>Quantity</td>
					<td>SubTotal</td>
					<td>Operation</td>
				</tr>	
				<c:forEach items="${cartList}" var="cartItem">
					<tr>
					    <td align="right">${cartItem.productId}</td>
						<td align="right">${cartItem.quantity}</td>
						<td align="right">RS.${cartItem.subTotal}</td>
						<td align="center">
							<c:url value="/editCart/${cartItem.cartItemId}" var="editString"></c:url>
							<a href="${editString}">Edit</a> &nbsp; &nbsp; &nbsp;
							<c:url value="/deleteCart/${cartItem.cartItemId}" var="deleteString"></c:url>
							<a href="${deleteString}">Delete</a>
						</td>
				</tr>
					
		</c:forEach>
		
		<tr  bgcolor="white" align="right">
					<td colspan="3" align="right"><b>Grand Total</b></td>
					<td colspan="1" align="right"><b>${grandTotal}</b></td>
		</tr>
		</table>       

            <div class="well">Payment Options</div>
			<label for="transactionType" class="col-md-4 control-label">Choose your payment method</label>
			   <div class="form-group">
    				<div class="col-lg-6">
      					<div class="radio radio-success beautiful">
        					<form:radiobutton name="transactionType" path="transactiontype" value="CC" />Credit Card
      					</div>
      					<div class="radio radio-success beautiful">
      						<form:radiobutton name="transactionType" path="transactiontype" value="DC" />Debit Card
      					</div>
      					<div class="radio radio-success beautiful">
      						<form:radiobutton name="transactionType" path="transactiontype" value="COD" />Cash On delivery
      					</div>
    				</div>
  				</div>	
  			
        <label for="address" class="col-md-4 control-label">Shipping Address</label>
				<div style="margin-bottom: 25px" class="input-group">
					<span class="input-group-addon"><i class="glyphicon glyphicon-tasks"></i></span>
					<form:textarea id="shippingAddr" path="shippingAddress" rows="5" cols="15" cssClass="form-control" required="true" placeholder="specify your Address for Deleivery"/>
				</div>
  				
  				<div class="form-group">
				<div class="col-md-offset-2 col-md-9">
                   <input type="submit" value="Proceed to checkout" class="btn btn-lg btn-primary btnAlign"/>				
</div>
			</div>
</div>

</div>
</div>
</form:form>
</div>
<%@include file="Footer.jsp" %>
</body>
</html>