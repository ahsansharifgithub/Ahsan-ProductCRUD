<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="./base.jsp"%>
</head>
<body>

	<div class="container">
		<div class="row">
			<div class="col-md-6 offset-md-3">

				<h1 class="text-center mb-3">Change Product Details</h1>

				<form action="${pageContext.request.contextPath }/handle-product" method="post">
				
				<input type="hidden" value="${product.id}" name="id" />

					<div class="form-group">
						<label for="name">Product name</label> <input type="text"
							class="form-control" 
							name="name"
							id="name" aria-describedby="emailHelp"
							placeholder="Enter your Product-name here"
							value="${product.name}">
					</div>

					<div class="form-group">
						<label for="description">Product Description</label>
						<textarea class="form-control" name="description" id="description"
							row="5" placeholder="Enter product Description here">${product.description}
    </textarea>
					</div>

					<div class="form-group">
						<label for="price">Product price</label> <input type="text"
							class="form-control" name="price" id="price"
							placeholder="Enter your Product Price"
							value="${product.price}">
					</div>

					<div class="container text-center">
						<a href="${pageContext.request.contextPath }/"
							class="btn btn-outline-danger">Back</a>
						<button type="submit" class="btn btn-primary">update</button>
				</form>

			</div>


		</div>

	</div>

</body>
</html>
