<html>
<head>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@include file="Header.jsp" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<title>Products!</title>
</head>
<body class="bg">
<div class="container">
<c:url value="/productPage" var="productPage"></c:url>
<form:form action="${productPage}" method="get">
		<div class="panel panel-success">
			<div class="panel-heading">
        		<div class="panel-title" align="center">Our Products</div>
        	</div>
    <div class="panel-body">
  <table>
     <tr >
     <td height="50" align="center"></td>
     </tr>
     <tr>
  <c:forEach items="${listProducts}" var="product">
     
     <td><img src="<c:url value="/resources/images/${product.productId}.jpg"/>"width="150" height="250"/>
         <br/>
         <a href="<c:url value="/productDesc/${product.productId}"/>">${product.productName}</a> 
         <br/>INR.${product.price} /-   
     </td>
  </c:forEach>
  </tr>
  </table>
  </div>
  </div>
  </form:form>
</div>
<%@include file="Footer.jsp" %>
</body>
</html>
