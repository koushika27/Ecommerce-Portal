<html>
<head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@include file="Header.jsp" %>
<title>Confirm Order</title>
</head>
<body class="bg">
<div class="container">
	<c:url value="/thankYou" var="actionString"></c:url>
		<div class="panel panel-success">
			<div class="panel-heading">
        		<div class="panel-title">Congratulations,Dear!</div>
        	</div>
        	<div class="panel-body">
        		<h3 align="center" class="well">You have placed your order successfully.</h3>  
        		<h2 align="center" class="well">Please visit Again</h2>      		
        		<p> Your order<b>${product.productName}</b> will be delivered at <b>${shippingAddress}</b> within 7 business days...</p>
        </div>
        </div>
        </div>

<%@include file="Footer.jsp" %>
</body>
</html>