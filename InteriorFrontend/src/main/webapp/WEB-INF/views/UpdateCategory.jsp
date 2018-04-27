<%@include file="Header.jsp" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<body class="bg">
<div class="container">
      <div class="col-xs-12 col-sm-12 col-md-6 well well-sm col-md-offset-4" >
      <legend><center><b>UpdateCategory Page</b></center></legend>
<div>
<c:url value="/updateCategory" var="updateValue"/>
<form action="${updateValue}" method="post">
<table align="center">
 <tr  align="center" bgcolor="pink">
  <td colspan="2">Update Category</td>
</tr>
<tr bgcolor="cyan">
    <td>CategoryId</td>
    <td><input type="text" readonly id="catid" name="catid" value="${categoryInfo.categoryId}"/></td>
  
</tr>
<tr bgcolor="cyan">
   <td>Category Name</td>
  <td><input type="text"   id="catname" name="catname" value="${categoryInfo.categoryName}"/></td>
</tr>
<tr bgcolor="cyan">
   <td>Category Desc</td>
  <td><input type="text" id="catdesc" name="catdesc" value="${categoryInfo.categoryDesc}"/></td>
</tr>
<tr>
</tr>
</table>
</form>
</div>
<div>
<table align="center">
   <tr bgcolor="DodgerBlue">
        <td>Category Id</td>
      <td>Category Name</td>
        <td>Category Desc</td>
    </tr>
    <c:forEach items="${listCategories}" var="category">
    <tr bgcolor="tomato">
    <td>${category.categoryId}</td>
    <td>${category.categoryName}</td>
    <td>${category.categoryDesc}</td>    
    </tr>    
    </c:forEach>
</table>
</div>
</div>
</div>
<%@include file="Footer.jsp" %>

</body>
</html>
