<html>

<body>
<%@ include file ="background.jsp" %>
<%@ include file ="header.jsp" %>
<div class="container">
<div class="jumbotron">
<form class="form-horizontal" role="form" method="post" action="index.php">

	<div class="form-group">
		<label for="name" class="col-sm-2 control-label">Name</label>
		<div class="col-sm-8">
			<input type="text" class="form-control" id="name" name="name" placeholder="First & Last Name" value="">
		</div>
	</div>
	<div class="form-group">
		<label for="email" class="col-sm-2 control-label">Email</label>
		<div class="col-sm-8">
			<input type="email" class="form-control" id="email" name="email" placeholder="example@domain.com" value="">
		</div>
	</div>
	<div class="form-group">
		<label for="message" class="col-sm-2 control-label">Message</label>
		<div class="col-sm-8">
			<textarea class="form-control" rows="4" name="message"></textarea>
		</div>
	</div>
	
	<div class="form-group">
		<div class="col-sm-8 col-sm-offset-2">
			<input id="submit" name="submit" type="submit" value="Send" class="btn btn-primary">
		</div>
	</div>
	<div class="form-group">
		<div class="col-sm-8 col-sm-offset-2">
		
		</div>
	</div>
</form>
</div>
</div>
<%@ include file ="footer.jsp" %>
</body>
</html>

