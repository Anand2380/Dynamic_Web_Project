<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Profile Edit</title>
<%@include file="all_component/allCss.jsp"%>
</head>
<body style="background-color: #f0f1f2;">
	<%@include file="all_component/navbar2.jsp"%>

	<div class="container">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
						<h4 class="text-center text-primary">Edit Profile</h4>
						<form action="update_profile" method="post">
						<input type="hidden" value="<%= user.getId()%>" name="id">
							<div class="form-group">
								<div class="form-group">
									<label for="exampleInputEmail1">Enter Full Name</label> <input
										type="text" class="form-control" id="fullName" name="fname"
										required value="<%=user.getName() %>">
								</div>
								<label for="exampleInputEmail1">Email address</label> <input
									type="email" class="form-control" id="email" name="email"
									required value="<%=user.getEmail()%>">
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">Phone No.</label> <input
									type="number" class="form-control" id="phone" name="phno"
									required value="<%=user.getPhno()%>">
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Password</label> <input
									type="password" class="form-control" id="password"
									name="password" required>
							</div>

							<button type="submit" class="btn btn-primary btn-block btn-sm">Update</button>
						</form>

					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>