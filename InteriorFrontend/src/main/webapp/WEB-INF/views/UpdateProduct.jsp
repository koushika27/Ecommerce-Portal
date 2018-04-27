<%@include file="Header.jsp" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<html>
<body class="bg">
<div class="container">
      <div class="col-xs-12 col-sm-12 col-md-6 well well-sm col-md-offset-4" >
      <legend><b>UpdateProduct Page</b></legend>
<div>
<c:url value="/updateProduct" var="updateValue"/>
<form:form action="${updateValue}" method="post" modelAttribute="product">

<div>
<table align="center">
<tr bgcolor="pink">
  <td colspan="2">Update Product</td>
</tr>  
   <tr bgcolor="red">
   
    <td>ProductId</td>
    <td><form:input path="productId" readonly="true" /></td>
  
</tr>
<tr bgcolor="red">
<td>ProductName</td>
   <td><form:input path="productName"/></td>   
    </tr>
   
    <tr bgcolor="red">
    <td>Product Desc</td>
  <td><form:input path="productDesc" /></td>
    </tr>
     
   <tr bgcolor="red">
   	 <td>Price</td>
 	 <td><form:input path="price" /></td>
    </tr>
    
    <tr bgcolor="red">
    <td>Stock</td>
  <td><form:input path="stock" /></td>
    </tr>
   
   <tr bgcolor="red">
    <td>Supplier</td>
  <td><form:input path="supplierId"/></td>
    </tr>
    <tr bgcolor="red">
     <td>Category</td>
    <td>
       <form:select path="categoryId">
         <form:option value="0" lable="---select---"/>
         <form:options items="${catlist}"/>
         </form:select>
       </td>
       <tr>
</tr>    
  <tr>
    <td colspan="2" align="center"><input type="submit" value="Update"/>
   </td>
   </tr>
  
 </table>
 </div> 
<div>
<table align="center">
    <tr bgcolor="DodgerBlue">
       <td>Product Id&nbsp;&nbsp;</td>
     	<td>Product Name&nbsp;&nbsp;</td>
        <td>Product Desc&nbsp;&nbsp;</td>
        <td>Product Price&nbsp;&nbsp;</td>
        <td>Product Stock&nbsp;&nbsp;</td>
        <td>Category ID&nbsp;&nbsp;</td>
        <td>SupplierId</td>
    </tr>
             <c:forEach items="${listProducts }" var="product">
				<tr bgcolor="tomato">
					<td>${product.productId}</td>
					<td>${product.productName}</td>
					<td>${product.productDesc}</td>
					<td>${product.price}</td>
					<td>${product.stock}</td>
					<td>${product.categoryId}</td>
					<td>${product.supplierId}</td>
					</tr>
				</c:forEach>
				
</table>
</div>
 </form:form>
 </div>
</div>
</div>
<%@include file="Footer.jsp" %>
</body>
</html>