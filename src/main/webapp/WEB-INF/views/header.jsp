<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<html lang="en">
<head>
<title>Interior Illusions</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script language="javascrpit" type="text/javascript">
	function formSubmit() {
		document.getElementById("logout").sumbit();
	}
</script>
</head>
<body>
	<c:url value="/perform_logout" var="logout" />
	<form action="${logout}" method="post" id="logout">
		<input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />
	</form>
	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">Interior Illusions</a>
			</div>
			<ul class="nav navbar-nav">
				<li class="active"><a href="index">Home</a></li>
				<li><a href="aboutus">About Us</a></li>

				<li><a href="contactus">Contact Us</a></li>
				<li><a href="allproducts">All Products</a></li>
				<li><a href="addproduct">Add a Product</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<c:if test="${pageContext.request.userPrincipal.name != null}">
					<li>Welcome ${pageContext.request.userPrincipal.name}</li>
					<li> <a href="javascript:formSubmit()">Logout</a></li>
					<security:authentication var="user" property="principal.authorities" />

					<security:authorize var="loggedIn" access="isAuthenticated()">
						<security:authorize access="hasRole('USER')">
						</security:authorize>
					</security:authorize>
				</c:if>
				<li><a href="signup"><span class="glyphicon glyphicon-user"></span>
						Sign Up</a></li>
				<li><a href="login"><span
						class="glyphicon glyphicon-log-in"></span> Login</a></li>
			</ul>
		</div>
	</nav>
	<div class="container"></div>