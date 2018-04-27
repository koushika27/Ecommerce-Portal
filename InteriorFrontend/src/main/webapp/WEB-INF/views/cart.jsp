<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="Header.jsp" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<title>Your cart!</title>
 </head>
 <body class="bg">
  <div class="container">
  <c:url value="/viewCart" var="viewCart"></c:url>
  <form:form action="${viewCart}" cssClass="form-horizontal">
 <div id="signupbox"	class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2 margin50">
		<div class="panel panel-success">
			<div class="panel-heading">
        		<div class="panel-title" align="center">Your Cart</div>
        	</div>
      <div class="panel-body">
     <table align="center">
     <tr bgcolor="Blue">
       <td>ProductId&nbsp;&nbsp;&nbsp;</td>
       <td>Quantity&nbsp;&nbsp;&nbsp;</td>
       <td>SubTotal&nbsp;&nbsp;&nbsp;</td>
       <td>Operation&nbsp;&nbsp;&nbsp;</td>
     </tr>
  <c:forEach items="${cartList}" var="cartItem">
    <form action="<c:url value="/editCart/${cartItem.cartItemId}"/>" method="get">
    
     <tr bgcolor="Tomato" class="Info"> 
     <td>${cartItem.productId}</td>
     <td><input type="text" name="quantity" value="${cartItem.quantity}"/></td>
     <td>${cartItem.subTotal}</td>
     <td>
         <input type="submit" value="Edit"  class="btn-sucess"/>
         <a href="<c:url value="/deleteCart/${cartItem.cartItemId}"/>" class="btn-btn-danger btn-block">Delete</a>
     </td>
     </tr>
    </form>
  </c:forEach>
        <tr bgcolor="white">
        <td colspan="2">Grand Total</td>
        <td colspan="2">RS.${grandTotal}/-</td>
        
      <tr>
         <td colspan="2" ><center>
         <a href="<c:url value="/productPage"/>" class="btn btn-primary">Continue Shopping</a></center></td>
         <td colspan="2" ><center>
         <a href="<c:url value="/ConfirmOrder"/>" class="btn btn-primary">Check Out</a></center></td>
  
  </table>
  </div>
  </div>
  </div>
  </form:form>
  </div>
<%@include file="Footer.jsp"%>
</body>
</html>