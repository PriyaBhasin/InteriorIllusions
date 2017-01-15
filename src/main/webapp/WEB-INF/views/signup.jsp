<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<script type="text/javascript">
        $(function () {
            $("Register").click(function () {
                var password = $("Password").val();
                var confirmPassword = $("password_confirm").val();
                if (password != confirmPassword) {
                    alert("Passwords do not match.");
                    return false;
                }
                return true;
            });
        });
</script>
					
</head>

<body>
<%@ include file ="background.jsp" %>
<%@ include file ="header.jsp" %>  
   <div class="container">
		<div class="jumbotron">
			<div class="row">
				<div class="col-md-12">

					<form:form class="form-horizontal" action="register" method="POST" commandName="user">
						<fieldset>
							<div id="legend">
								<legend class="">Register</legend>
							</div>
							<div class="control-group">
								<label class="control-label" for="username">Username</label>
								<div class="controls">
									<input id="username" name="username" placeholder=""
										class="form-control input-lg" type="text">
									<p class="help-block">Username can contain any letters or
										numbers, without spaces</p>
								</div>
							</div>

							<div class="control-group">
								<label class="control-label" for="email">E-mail</label>
								<div class="controls">
									<input id="email" name="email" placeholder=""
										class="form-control input-lg" type="email">
									<p class="help-block">Please provide your E-mail</p>
								</div>
							</div>

							<div class="control-group">
								<label class="control-label" for="password">Password</label>
								<div class="controls">
									<input id="password" name="password" placeholder=""
										class="form-control input-lg" type="password">
									<p class="help-block">Password should be at least 8
										characters</p>
								</div>
							</div>

							<div class="control-group">
								<label class="control-label" for="password_confirm">Password
									(Confirm)</label>
								<div class="controls">
									<input id="password_confirm" name="password_confirm"
										placeholder="" class="form-control input-lg" type="password">
									<p class="help-block">Please confirm password</p>
					
									
								</div>
							</div>

							<div class="control-group">
								<!-- Button -->
								<div class="controls">
									<button class="btn btn-success" name="Register">Register</button>
								</div>
							</div>
						</fieldset>
					</form:form>

				</div>
			</div>

		</div>
	</div>
          <%@ include file ="footer.jsp" %>
</body>
</html>