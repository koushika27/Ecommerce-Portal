<html>
<head>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" type="text/css">
  <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
  <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


  <c:url value="/product" var="productValue"></c:url>
  <c:url value="/category" var="categoryValue"></c:url>
  <c:url value="/productPage" var="productPage"></c:url>
  <c:url value="/viewCart" var="viewCart"></c:url>
  <c:url value="/ConfirmOrder" var="ConfirmOrder"></c:url>
  <c:url value="/signup" var="String"></c:url>
  <c:url value="/login" var="actionstring"></c:url>
  <c:url value="/logout" var="logout"></c:url>
  <c:url value="/aboutus" var="url2"></c:url>
  <c:url value="/Home" var="home"></c:url>
  <c:url value="/resources/images/log.jpg" var="url5"></c:url>
</head>
<style type="text/css">
	body
	 {
    	height: 100%;
	}
	.bg { 
    	background-image: url("resources/images/flr.jpg"),url("../resources/images/flr.jpg");
    	height: 100%; 
    	background-position: center;
    	background-repeat:repeat-y;
    	background-size: cover;
	}
	
	<meta name="viewport" content="width=device-width, initial-scale=1">
 {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}

.topnav 
{
  overflow: hidden;
  background-color: #333;
}

.topnav a 
{
  float: left;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

.topnav a:hover 
{
  background-color: #ddd;
  color: black;
}

.topnav a.active 
{
  background-color: #4CAF50;
  color: white;
}
</style>
<body class="bg"> 


	<nav class="navbar navbar-inverse ">
	<div class="container blue circleBehind">
		<div class="container">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#collapse-example"
				aria-expanded="false">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
<div class="navbar-header">
             <a class="navbar-brand" href="${url2}"><img src="${url5 }"
				class="img-circle" alt="logo" height="30px" width="30px"></a> 
				<a class="navbar-brand" href="#">K.Cart</a>
</div>
      <c:if test="${!loggedIn}">
      <ul class="nav navbar-nav">
          <li><a href="${home}">Home</a>&nbsp;&nbsp;|&nbsp;&nbsp;</li>
          <li><a href="${url2}">AboutUs</a>&nbsp;&nbsp;|&nbsp;&nbsp;</li>
          <li><a href="${actionstring}">Login</a>&nbsp;&nbsp;|&nbsp;&nbsp;</li>
          <li><a href="${String}">Signup</a>&nbsp;&nbsp;|&nbsp;&nbsp;</li>    
          
      </ul>
      </c:if>
      <c:if test="${loggedIn}">
      <c:if test="${role=='ROLE_ADMIN'}">
      <ul class="nav navbar-nav">
          <li><a href="${categoryValue}">Category</a>&nbsp;&nbsp;|&nbsp;&nbsp;</li>
          <li><a href="${productValue}">Product</a>&nbsp;&nbsp;|&nbsp;&nbsp;</li>
          <li><a href="${logout}">Logout</a>&nbsp;&nbsp;|&nbsp;&nbsp;</li>
      </ul>
      </c:if>
      </c:if>
      <c:if test="${role=='ROLE_USER'}">
      <ul class="nav navbar-nav">
   	        <li><a href="${productPage}">ProductPage</a>&nbsp;&nbsp;|&nbsp;&nbsp;</li>
   	         <li><a href="${viewCart}">MyCart</a></li>
   	        <li><a href="${ConfirmOrder}">MyOrders</a></li>
	        <li><a href="${logout}">Logout</a>&nbsp;&nbsp;|&nbsp;&nbsp;</li>
      </ul>
      </c:if>  
	  
</div>
</div>
</nav>
</body>
</html>
