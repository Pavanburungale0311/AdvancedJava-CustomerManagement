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
<form action="add" >
<div class="input-group mb-3 mt-4">
	<span class="input-group-text">ID:</span>
	<input class="form-control" type="text" name="id" id="id" placeholder="Enter Id"/>
</div>

<div class="input-group mb-3">
	<span class="input-group-text">Name:</span>
	<input class="form-control" type="text" name="name" id="name" placeholder="Enter Name"/>
</div>

<div class="input-group mb-3">
	<span class="input-group-text">Phone:</span>
	<input class="form-control" type="tel" name="phone" id="phone" placeholder="Enter Contact Number"/>
</div>

<div class="input-group mb-3">
	<span class="input-group-text">Email:</span>
	<input class="form-control" type="email" name="email" id="email" PlaceHolder="Enter Email"/>
</div>

<div class="input-group mb-3">
	<span class="input-group-text">Street:</span>
	<input class="form-control" type="text" name="street" id="street" placeholder="Enter Street"/>
</div>

<div class="input-group mb-3">
	<span class="input-group-text">City:</span>
	<input class="form-control" type="text" name="city" id="city" placeholder="Enter City"/>
</div>

<div class="input-group mb-3">
	<span class="input-group-text">State:</span>
	<input class="form-control" type="text" name="state" id="state" placeholder="Enter State"/>
</div>

<div class="input-group mb-3">
	<span class="input-group-text">Zip_Code:</span>
	<input class="form-control" type="text" name="zipcode" id="zipcode" placeholder="Enter PinCode"/>
</div>

<div class="input-group mb-3">
	<span class="input-group-text">Book_Product:</span>
	<input class="form-control" type="text" name="bookproduct" id="bookproduct" placeholder="Book Product"/>
</div>

<div class="input-group mb-3">
	<span class="input-group-text">Booking_Date:</span>
	<input class="form-control" type="date" name="bookingdate" id="bookingdate" placeholder ="Booking Date"/>
</div>

<div class="input-group mb-3">
	<span class="input-group-text">Supply_Date:</span>
	<input class="form-control" type="date" name="supplydate" id="supplydate" placeholder="Enter Supply Date"/>
</div>

<div class="row">
<div class="col-6">
</div>

<div class="col-6">
<div>
	<input type="submit" value="Add" class="btn btn-outline-success mt-3 "/>
</div>
</div>
</div>
</form>
</div>
</body>
</html>