<%@page import="com.entity.Book_Order"%>
<%@page import="java.util.List"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.BookDAOImpl"%>
<%@page import="com.DAO.BookOrderImpl"%>
<%@page import="com.entity.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Order</title>
<%@include file="all_component/allCss.jsp"%>
</head>
<body style="background-color: #f0f1f2;">
	<%@include file="all_component/navbar2.jsp"%>

	<div class="container p-1">
		<h3 class="text-center text-primary">Your Order</h3>
		<table class="table table-striped mt-3">
			<thead class="bg-primary text-white">
				<tr>
					<th scope="col">OrderId</th>
					<th scope="col">Name</th>
					<th scope="col">BookName</th>
					<th scope="col">Author</th>
					<th scope="col">Price</th>
					<th scope="col">Payment Type</th>

				</tr>
			</thead>
			<tbody>

				<%
				User u = (User) session.getAttribute("userobj");
				BookOrderImpl dao = new BookOrderImpl(DBConnect.getConn());
				List<Book_Order> blist = dao.getBook(u.getEmail());
				for (Book_Order b : blist) {
				%>
				<tr>
					<th scope="row"><%= b.getOrderId() %></th>
					<td><%= b.getUsername() %></td>
					<td><%= b.getBookname() %></td>
					<td><%= b.getAuthor() %></td>
					<td><%= b.getPrice() %></td>
					<td><%= b.getPaymentType() %></td>				
				</tr>
				<%
				}
				%>

			</tbody>
		</table>

	</div>

</body>
</html>