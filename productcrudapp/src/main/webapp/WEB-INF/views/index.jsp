<html>

<head>
<%@include file="./base.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
	
<script src="<c:url value="/resources/js/script.js" />"> </script>
</head>


<body style="background-image:url('images/product.jpg');">

	<div class="container mt-3">

		<div class="row">

			<div class="col md-12">

				<h1 class="text-center mb-3">Welcome to Product App</h1>

				<table class="table">
					<thead class="thead-dark">
						<tr>
							<th scope="col">ID</th>
							<th scope="col">product-name</th>
							<th scope="col">description</th>
							<th scope="col">Price</th>
							<th scope="col">Action</th>
						</tr>
					</thead>
					<tbody>
					
					<c:forEach items="${product}" var="p">
						<tr>
							<th scope="row">${p.id}</th>
							<td>${p.name} </td>
							<td>${p.description}</td>
							<td class="font-weight-bold">&#36; ${p.price}</td>
							<td>
									<a href="delete/${p.id}"><i class="fas fa-trash-alt text-danger"></i></a>
									<a href="update/${p.id}"><i class="fas fa-pen-nib text-priamry"></i></a>
									
							</td>
						</tr>
						
						</c:forEach>
					</tbody>
				</table>
				
				
				<div class="container text-center">
				
				<a href="add-product" class="btn btn-outline-success">add product</a>
				
				</div>
				
				
				


			</div>


		</div>




	</div>


</body>
</html>
