<html>
<head>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@include file="Header.jsp" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<title>Description</title>
</head>
<body class="bg">
<div class="container">
      <div class="col-xs-12 col-sm-12 col-md-6 well well-sm col-md-offset-4" >
      <h3 align="center"><b>Product Detail</b></h3>

<table style="width:100%">
    <tr bgcolor="pink">
      <td rowspan="6">
      <img src="<c:url value="/resources/images/${productInfo.productId}.jpg"/>"width="200" height="200"/>
      </td>
      <td><b>Product Id</b></td>
      <td>${productInfo.productId}</td>
    </tr>
    <tr bgcolor="pink">
       <td><b>Product Name</b></td>
       <td>${productInfo.productName}</td>
    </tr>
    <tr bgcolor="pink">
       <td><b>Product price</b></td>
       <td>${productInfo.price}</td>
    </tr>
    <tr bgcolor="pink">
      <td><b>Category Id</b></td>
      <td>${productInfo.categoryId}</td>
    </tr>
    <tr bgcolor="pink">
      <td><b>Supplier Id</b></td>
      <td>${productInfo.supplierId}</td>
    </tr>
    <tr bgcolor="pink">
    <td><b>Product Description</b></td>
    <td>${productInfo.productDesc}</td>
    </tr>
   
    <tr bgcolor="pink">
    <td colspan=2>
    <form action="<c:url value="/addToCart/${productInfo.productId}"/>" method="get">
    
    <table>
    <tr>
    <td><b>Select quantity here: </b></td>
    <td>
       <select id="selectedQuantity" name="quantity">
			<option value="1">1</option>
			<option value="2">2</option>
			<option value="3">3</option>
			<option value="4">4</option>
			<option value="5">5</option>
			</select>
			</td>
			</tr>
		<tr>
         <td colspan="2" align="center">
           <input type="submit" value="Addtocart" class="btn btn-lg btn-primary btnAlign"/></td>
           </tr>	
   </table>
   </form>
   </td>
   </tr>
</table> 
</div>
</div>
<%@include file="Footer.jsp" %>   
</body>
</html>
