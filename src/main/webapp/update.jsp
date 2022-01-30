<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.itvedant.entity.Customer"%>
<%@page import="javax.persistence.EntityManager"%>
<%@page import="javax.persistence.EntityManagerFactory"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Management System</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</head>
<body>
<%
	EntityManagerFactory emf=(EntityManagerFactory)application.getAttribute("emf");
	EntityManager em=emf.createEntityManager();
	int id=Integer.parseInt(request.getParameter("id"));
	
	Customer c=em.find(Customer.class,id);
%>
<div class="container">
<form action="update" >
<input type="hidden" name="id" value="<%=c.getCid() %>"/>
<div class="input-group mb-3">
	<span class="input-group-text">Name:</span>
	<input class="form-control" type="text" name="name" id="name" value="<%=c.getCname()%>"/>
</div>

<div class="input-group mb-3">
	<span class="input-group-text">Phone:</span>
	<input class="form-control" type="text" name="phone" id="phone" value="<%=c.getPhone()%>"/>
</div>

<div class="input-group mb-3">
	<span class="input-group-text">Email:</span>
	<input class="form-control" type="text" name="email" id="email" value="<%=c.getEmail()%>"/>
</div>

<div class="input-group mb-3">
	<span class="input-group-text">Street:</span>
	<input class="form-control" type="text" name="street" id="street" value="<%=c.getStreet()%>"/>
</div>

<div class="input-group mb-3">
	<span class="input-group-text">City:</span>
	<input class="form-control" type="text" name="city" id="city" value="<%=c.getCity()%>"/>
</div>

<div class="input-group mb-3">
	<span class="input-group-text">State:</span>
	<input class="form-control" type="text" name="state" id="state" value="<%=c.getState()%>"/>
</div>

<div class="input-group mb-3">
	<span class="input-group-text">Zip_Code:</span>
	<input class="form-control" type="text" name="zipcode" id="zipcode" value="<%=c.getZipcode()%>"/>
</div>

<div class="input-group mb-3">
	<span class="input-group-text">Book_Product:</span>
	<input class="form-control" type="text" name="bookproduct" id="bookproduct" value="<%=c.getBook_Product()%>"/>
</div>

<div class="input-group mb-3">
	<span class="input-group-text">Booking_Date:</span>
	<input class="form-control" type="text" name="bookingdate" id="bookingdate" value="<%=c.getBooking_date()%>"/>
</div>

<div class="input-group mb-3">
	<span class="input-group-text">Supply_Date:</span>
	<input class="form-control" type="text" name="supplydate" id="supplydate" value="<%=c.getSupply_date()%>"/>
</div>

<div class="row">
<div class="col-6">
</div>

<div class="col-6">
<div>
	<input type="submit" value="Update" class="btn btn-outline-success mt-3 "/>
</div>
</div>
</div>
</form>
</div>
</body>
</html>