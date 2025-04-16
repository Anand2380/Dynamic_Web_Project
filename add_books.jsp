<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Book: Page</title>
<%@ include file="allCss.jsp"%>
</head>
<body style="background-color: #f0f1f2">
	<%@ include file="navbar.jsp"%>
	<div class="container">
		<div class="row p-2">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">

						<h2 class="text-center">Add Book</h2>
						<form action="../add_books" method="post" enctype="multipart/form-data">

							<div class="form-group">
								<label for="exampleInputEmail1">Book Name</label><input
									name="bname" type="text" class="form-control"
									id="exampleInputEmail1">
							</div>

							<div class="form-group">
								<label for="exampleInputEmail1">Author Name</label><input
									name="author" type="text" class="form-control"
									id="exampleInputEmail1">
							</div>

							<div class="form-group">
								<label for="exampleInputEmail1">Price</label><input name="price"
									type="number" class="form-control" id="exampleInputEmail1">
							</div>

							<div class="form-group">
								<label for="inputstate">Book Categories</label> <select
									id="inputstate" name="categories" class="form-control">
									<option selected>--Select--</option>
									<option value="New">New Book</option>
								</select>
							</div>

							<div class="form-group">
								<label for="inputstate">Book Status</label> <select
									id="inputstate" name="status" class="form-control">
									<option selected>--Select--</option>
									<option value="Active">Active</option>
									<option value="Inactive">Inactive</option>
								</select>
							</div>

							<div class="form-group">
								<label for="exampleFormControlFile1">Upload Photo</label><input
									name="bimg" type="file" class="form-control-file"
									id="exampleFormControlFile1">
							</div>
							<button type="submit" class="btn btn-primary">Add</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div>
		<%@ include file="footer.jsp"%>
	</div>
</body>
</html>