<%@include file="Header.jsp" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<div class="container">
      <div class="col-xs-12 col-sm-12 col-md-6 well well-sm col-md-offset-4" >
      <h3 align="center"><b> Add Category Page</b></h3>

<form action="<c:url value="/InsertCategory" />" method="post">

<table align="center" class="table table-hover table-condensed" style="width: 50%;">
<tr class="success">
		<td colspan="2" align="center"><label id="tableHeader">Add Category</label></td>
</tr>
	
   
<tr class="success" bgcolor="cyan">
   <td>Category Name</td>
   <td><input type="text" id="catname" name="catname"/></td>
</tr>
<tr bgcolor="cyan">
   <td>Category Desc</td>
   <td><input type="text" id="catdesc" name="catdesc"/></td>
</tr>
<tr>
   <td colspan="2"><input type="submit" value="SUBMIT"/>
   <input type="reset" value="RESET"/></td>
</tr>

</table>
<table align="center">
   <tr bgcolor= "DodgerBlue">
        <td>Category Id</td> 
      	<td>Category Name</td>
        <td>Category Desc</td> 
        <td>Operation</td>
    </tr>
    <c:forEach items="${listCategories}" var="category">
    <tr bgcolor="tomato">
    <td>${category.categoryId} </td>
    <td>${category.categoryName} </td>
    <td>${category.categoryDesc}</td>
    <td>
    <a href="<c:url value="/updateCategory/${category.categoryId}"/>">Update</a> &nbsp;&nbsp;&nbsp;    
    <a href="<c:url value="/deleteCategory/${category.categoryId}"/>">Delete</a>
    </td>
    </tr>    
    </c:forEach>
</table>
</form>
</div>
</div>
<%@include file="Footer.jsp" %>

</body>
</html>
