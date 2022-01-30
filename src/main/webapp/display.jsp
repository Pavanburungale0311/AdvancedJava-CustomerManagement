 <%@page import="java.util.List"%>
 <%@page import="com.itvedant.entity.Customer" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Management System</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</head>
<body>

<div class="container">
<% List<Customer> cust= (List<Customer>)request.getAttribute("cust");%>
<a href="add.jsp" class="btn btn-outline-success mt-3" >Add Customer</a>
<div class="mt-3">
<table class="table" border=1>
	<tr>
		<th>ID</th>
		<th>Name</th>
		<th>Phone</th>
		<th>Email</th>
		<th>Street</th>
		<th>City</th>
		<th>State</th>
		<th>Zip_Code</th>
		<th>Product_Book</th>
		<th>Booking_Date</th>
		<th>Supply_Date</th>
		<th></th>
		<th></th>
	</tr>
	<%for(Customer c:cust) {%>
	<tr>
		<td><%=c.getCid()%></td>
		<td><%=c.getCname()%></td>
		<td><%=c.getPhone()%></td>
		<td><%=c.getEmail()%></td>
		<td><%=c.getStreet()%></td>
		<td><%=c.getCity()%></td>
		<td><%=c.getState()%></td>
		<td><%=c.getZipcode()%></td>
		<td><%=c.getBook_Product()%></td>
		<td><%=c.getBooking_date()%></td>
		<td><%=c.getSupply_date()%></td>
		<td><a href="update.jsp?id=<%=c.getCid()%>" class="btn btn-outline-info">Update</a></td>
		<td><a href="delete?id=<%=c.getCid()%>" class="btn btn-outline-danger">Delete</a></td>
	</tr>
	<%} %>
</table>
</div>
<div class="logout">
<h3><a href="logout" class="btn btn-outline-warning">logout</a></h3>
</div>
</div>

</body>
</html>