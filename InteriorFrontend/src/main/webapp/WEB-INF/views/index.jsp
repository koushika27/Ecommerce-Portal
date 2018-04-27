<html>
<head>
<%@ include file="Header.jsp" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<title> K.cart </title>
</head>

<body class="bg">
	<div class="container-fluid">
		<div class="panel panel-success">
			<div class="panel-heading">
              	<div class="panel-title" align="center"><b>Welcome!</b></div>			
			</div>
			<div class="panel-body">
				<div id="myCarousel" class="carousel slide" data-ride="carousel">
					<ol class="carousel-indicators">
						<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
						<li data-target="#myCarousel" data-slide-to="1"></li>
						<li data-target="#myCarousel" data-slide-to="2"></li>
					</ol>

    <div class="carousel-inner">
						<div class="item active">
							<img src="resources/images/clothing1.jpg" alt=mens-and-womens-wear style="width: 100%;">
						</div>

						<div class="item">
							<img src="resources/images/home.jpg" alt="electronics" style="width: 100%;">
						</div>

						<div class="item">
							<img src="resources/images/pet.jpg" alt="Pet-care" style="width: 100%;">
						</div>
					    
			</div>
        <a class="left carousel-control" href="#myCarousel" data-slide="prev">
         <span class="glyphicon glyphicon-chevron-left"></span> 
         <span class="sr-only">Previous</span>
	    </a> 
	    <a class="right carousel-control" href="#myCarousel" data-slide="next">
	     <span class="glyphicon glyphicon-chevron-right"></span>
	     <span class="sr-only">Next</span>
		</a>
				</div>
			</div>
		</div>
		</div>
<%@include file="Footer.jsp" %>
</body>
</html>
