<%@ include file="Header.jsp" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	 <title>Welcome Back!</title>
</head>
<body class="bg">
	<div class="container">    
    <div id="loginbox" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2 margin50">                    
    <div class="panel panel-success" >
    <div class="panel-heading">
    <h1 align="center">WELCOME BACK</h1>
    <h2 align="center">Please Login</h2>
    </div>     

    <div style="padding-top:30px" class="panel-body">
    <div style="display:none" id="login-alert" class="alert alert-danger col-sm-12"></div>
    <c:url value="/signIn" var="actionstring" />                         
    <form:form id="loginform" cssClass="form-horizontal" action="${actionstring}" method="POST" modelAttribute="user">                                    
    <div style="margin-bottom: 25px" class="input-group">
           <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
           <form:input id="login-username" cssClass="form-control" path="userName" placeholder="username" required="true"/>                                        
     </div>    
     <div style="margin-bottom: 25px" class="input-group">
           <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
           <form:password id="login-password" cssClass="form-control" path="passWord" placeholder="password" required="true" />
     </div>   
     <div class="input-group">
     <div class="checkbox">
             <label><input id="login-remember" type="checkbox" name="remember" value="1"> Remember me</label>
     </div>
     </div>

     <div style="margin-top:10px" class="form-group">
     <div class="col-sm-12 controls">
              <input type="submit" id="btn-login" class="btn btn-success icon-hand-right" align="center" value="Login" />                           
     </div>
     </div>
                           	
     <div class="form-group">
     <div class="col-md-12 control">
     <div style="border-top: 1px solid#4cae4c; padding-top:15px;" >Don't have an account?
     <a href="signup">&nbsp;Sign Up Here</a>
     </div>
     </div>
     </div>    
     </form:form>
     </div>                     
     </div>  
     </div>
     </div>
    <%@include file="Footer.jsp" %>
</body>
</html>