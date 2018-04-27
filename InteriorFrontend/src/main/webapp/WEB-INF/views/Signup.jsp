<html>
<head>
<%@ include file="Header.jsp" %>
<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<title>Welcome!</title>
</head>
<body class="bg">
<div class="container">    
    <div id="loginbox" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2 margin50">                    
    <div class="panel panel-success" >
    <div class="panel-heading">
    <h1 align="center">WELCOME</h1>
    <h2 align="center">Please Register</h2>
    </div>     

    <div style="padding-top:30px" class="panel-body">
    <div style="display:none" id="login-alert" class="alert alert-danger col-sm-12"></div>
  
  <c:url value="/adduserDetail" var="String" />
  <form:form id="signupform" cssClass="form-horizontal" action="${String}" method="post" modelAttribute="user">
     
     <label for="fname" class="col-md-3 control-label">Your Name</label>
					<div style="margin-bottom: 25px" class="input-group">								
						<span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
						<form:input path="customerName" cssClass="form-control" placeholder="Enter your name" required="true"/>
					</div> 
	 <label for="username" class="col-md-3 control-label">User Name</label>
					<div style="margin-bottom: 25px" class="input-group">
						<span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
						<form:input path="userName" cssClass="form-control" placeholder="Choose an user name" required="true"/>
					</div>
				
	<label for="password" class="col-md-3 control-label">Password</label>
					<div style="margin-bottom: 25px" class="input-group">
						<span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>	
						<form:password path="passWord" cssClass="form-control" placeholder="Choose your password" required="true"/>
					</div>
	<label for="email" class="col-md-3 control-label">Email</label>
					<div style="margin-bottom: 25px" class="input-group">
						<span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
						<form:input path="emailId" cssClass="form-control" placeholder="Enter your emailID" required="true"/>
					</div>
	 <label for="mobile" class="col-md-3 control-label">Mobile Number</label>
					<div style="margin-bottom: 25px" class="input-group">
						<span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
						<form:input path="mobileNo" cssClass="form-control" placeholder="Enter your mobile number" pattern="^[0-9]{10}$" required="true"/>
					</div>
		
	<label for="address" class="col-md-3 control-label">Address</label>
					<div style="margin-bottom: 25px" class="input-group">
						<span class="input-group-addon"><i class="glyphicon glyphicon-tasks"></i></span>
						<form:textarea path="address" rows="5" cols="30" cssClass="form-control" placeholder="Enter your address" required="true"/>
					</div>	
					
		<div class="form-group">
						<div class="col-md-offset-3 col-md-9">
							<input type="submit" id="btn-signup" class="btn btn-success" value="Sign Up" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
  
