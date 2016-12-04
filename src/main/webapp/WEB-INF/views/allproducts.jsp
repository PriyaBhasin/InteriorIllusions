<!DOCTYPE html>
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
  <%@ include file ="background.jsp" %>
<%@ include file ="header.jsp" %>
<style>


#myInput {

    background-image: url("resources/searchicon.png"); /* Add a search icon to input */
    background-position: 10px 12px; /* Position the search icon */
    background-repeat: no-repeat; /* Do not repeat the icon image */
    width: 100%; /* Full-width */
    font-size: 16px; /* Increase font-size */
    padding: 12px 20px 12px 40px; /* Add some padding */
    border: 1px solid #ddd; /* Add a grey border */
    margin-bottom: 12px; /* Add some space below the input */
}

#myTable {
  border-collapse: collapse;
  width: 100%;
  border: 1px solid #ddd;
  font-size: 18px;
}

</style>

  
</head>

<body>


	<div class="container">

		<div class="jumbotron">
			<h2>ALL PRODUCTS</h2>
<input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search for product id..">


			<table id="myTable" class="table table-hover table-bordered">
				<thead>
					<tr>

						<th>PRODUCT ID.</th>
						<th>PRODUCT NAME</th>
						<th>PRODUCT CATEGORY</th>
						<th>PRODUCT PRICE</th>
						<th>PRODUCT DESCRIPTION</th>
						<th>IMAGES</th>
						<th></th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<c:forEach var="p" items="${productList}">
							<tr>
								<td>${p.id}</td>
								<td>${p.name}</td>
								<td>${p.category}</td>
								<td>${p.price}</td>
								<td>${p.description}</td>
								<td><img src="<c:url value='/resources/${p.id }.jpg' /> "
									height="50" width="50" /></td>
								<td>
									<div class="container-fluid">
										<div class="row">

											<div class="col-sm-4">
												<a href="updateproduct?id=${p.id}"><button
														class="btn btn-default" type="submit" data-toggle="modal">
														<span class="glyphicon glyphicon-pencil"></span> Update
													</button></a>
											</div>
											<div class="col-sm-2"></div>
											<div class="col-sm-4">
												<a href="deleteproduct?id=${p.id}"><button
														class="btn btn-default" type="submit" data-toggle="modal">
														<span class="glyphicon glyphicon-trash"></span> Delete
													</button></a>
											</div>
										</div>
										<div class="col-sm-2"></div>
										<div class="col-sm-2"></div>

									</div>

								</td>
							</tr>
						</c:forEach>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
	<script>
function myFunction() {
  var input, filter, table, tr, td, i;
  input = document.getElementById("myInput");
  filter = input.value.toUpperCase();
  table = document.getElementById("myTable");
  tr = table.getElementsByTagName("tr");
  for (i = 0; i < tr.length; i++) {
    td = tr[i].getElementsByTagName("td")[0];
    if (td) {
      if (td.innerHTML.toUpperCase().indexOf(filter) > -1) {
        tr[i].style.display = "";
      } else {
        tr[i].style.display = "none";
      }
    }       
  }
}
</script>
    <%@ include file ="footer.jsp" %>
    

    
</body>
</html>



