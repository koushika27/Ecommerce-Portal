<%@include file="Header.jsp" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<div class="container">
      <div class="col-xs-12 col-sm-12 col-md-6 well well-sm col-md-offset-4" >
      <legend><center><b> Add Product Page</b></center></legend>
<c:url value="/InsertProduct" var="insertValue"></c:url>

<form:form action="${insertValue}" modelAttribute="product" method="post" enctype="multipart/form-data">

<table align="center" class="table table-hover table-condensed" style="width: 50%;">
      <tr  align="center"><td colspan="2">Product Detail</td></tr>
    
    <tr bgcolor="cyan">
    <td>Product Name</td>
     <td><form:input path="productName"/></td>    </tr>
    <tr bgcolor="cyan" >
    <td>Product Desc</td>
    <td><form:input path="productDesc"/></td>
        </tr>
    
    <tr bgcolor="cyan">
    <td>Product Image</td>
    <td><form:input type="file" path="pimage" /></td>
    </tr>
     <tr bgcolor="cyan" >
     <td>Category</td>
    <td>
       <form:select path="categoryId">
         <form:option value="0" lable="---select---"/>
         <form:options items="${catlist}"/>
         </form:select>
       </td>
    </tr>
  <tr bgcolor="cyan">
    <td>Price</td>
    <td><form:input path="price" /></td>
    </tr>
      </tr>
  
  <tr bgcolor="cyan">
    <td>Supplier</td>
<td><form:input path="supplierId"/></td>    </tr>
  <tr bgcolor="cyan">
    <td>Stock</td>  
      <td><form:input path="stock"/></td>
    
    </tr>
    <tr>
    <td colspan="2" align="center"><input type="submit" value="SUBMIT"/>
   </td>
   </tr>
   </table>
   
   <table align="center">
   <tr bgcolor= "DodgerBlue">
        <td>Product Id</td>
     	<td>Product Name</td>
        <td>Product Desc</td>
        <td>Product Price</td>
        <td>Product Stock</td>
        <td>Category ID</td>
        <td>SupplierId</td>
        <td>Operation</td>
    </tr>
   			<c:forEach items="${listProducts}" var="product">
				<tr bgcolor="tomato">
					<td>${product.productId}</td>
					<td>${product.productName}</td>
					<td>${product.productDesc}</td>
					<td>${product.price}</td>
					<td>${product.stock}</td>
					<td>${product.categoryId}</td>
					<td>${product.supplierId}</td>
					<td><a href="<c:url value="updateProduct/${product.productId}" />">Update</a>&nbsp;&nbsp;&nbsp; 
					<a href="<c:url value="deleteProduct/${product.productId}" />" >Delete</a></td>
				</tr>
			</c:forEach>
		</table>		

</form:form>
</div>
</div>
<%@include file="Footer.jsp" %>
</body>
</html>