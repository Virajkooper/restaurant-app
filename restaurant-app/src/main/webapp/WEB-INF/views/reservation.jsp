<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>Home - Cafe ROSA</title>
<style>
body {
	margin: 0;
	padding: 0;
	font-family: 'Arial', sans-serif;
	background-color: #f5f5f5;
	color: #333;
}

/* Navigation Bar */
.navbar {
	display: flex;
	justify-content: space-between;
	align-items: center;
	padding: 15px 30px;
	background-color: rgba(0, 0, 0, 0.8);
	color: #fff;
	position: fixed;
	width: 100%;
	z-index: 1000;
	box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
}

.navbar .logo {
	font-size: 24px;
	font-family: 'Brush Script MT', cursive;
	color: #FFC107; /* Gold logo color */
}

.navbar ul {
	list-style: none;
	display: flex;
	margin: 0;
	padding: 0;
}

.navbar ul li {
	margin: 0 20px;
}

.navbar ul li a {
	color: #fff;
	text-decoration: none;
	font-size: 16px;
	transition: color 0.3s;
}

.navbar ul li a:hover {
	color: #FFC107; /* Gold hover color */
}

/* Carousel Styling */
.carousel-inner img {
	width: 100%;
	height: 50vh; /* Set height to 50% of the viewport height */
	object-fit: cover; /* Ensure the image covers the container */
}

.carousel-item {
	height: 50vh;
	/* Make the carousel item take up 50% of the viewport height */
}

/* Menu Section */
.menu-section {
	padding: 50px;
	background-color: #000;
	color: #fff;
	align-items: center;
	padding-left: 400px;
}

.reservation-form {
	width: 600px;
	padding: 30px;
	background-color: white;
	box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
	border-radius: 5px;
}

.reservation-form h2 {
	text-align: center;
	color: #333;
	margin-bottom: 10px;
	font-size: 24px;
	font-weight: bold;
}

.reservation-form h3 {
	text-align: center;
	color: #FFC107;
	margin-bottom: 20px;
	font-size: 24px;
	font-weight: normal;
}

.reservation-form .form-group {
	display: flex;
	justify-content: space-between;
	margin-bottom: 15px;
}

.reservation-form .form-group input, .reservation-form .form-group textarea
	{
	width: 48%;
	padding: 10px;
	font-size: 16px;
	border: 1px solid #ddd;
	border-radius: 5px;
}

.reservation-form .form-group input:focus, .reservation-form .form-group textarea:focus
	{
	outline: none;
	border-color: #d4a17a;
}

.reservation-form .form-group.full-width input, .reservation-form .form-group.full-width textarea
	{
	width: 100%;
}

.reservation-form .form-group span {
	color: #d4a17a;
	font-size: 12px;
}

.reservation-form button {
	width: 100%;
	padding: 12px;
	background-color: #FFC107;
	font-size: 16px;
	border: none;
	border-radius: 5px;
	cursor: pointer;
}

.reservation-form button:hover {
	background-color: #FFC107;
}

@media ( max-width : 768px) {
	.reservation-form {
		width: 100%;
		padding: 20px;
	}
	.reservation-form .form-group {
		flex-direction: column;
	}
	.reservation-form .form-group input, .reservation-form .form-group textarea
		{
		width: 100%;
	}
}

.alert {
	padding: 15px;
	margin-bottom: 20px;
	border: 1px solid transparent;
	border-radius: 4px;
	font-size: 16px;
	text-align: center;
	display: none; /* Hidden by default */
}

.alert-success {
	color: #3c763d;
	background-color: #dff0d8;
	border-color: #d6e9c6;
}

.alert-error {
	color: #a94442;
	background-color: #f2dede;
	border-color: #ebccd1;
}
</style>
<!-- Bootstrap CSS -->
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body>

	<!-- Navigation Bar -->
	<nav class="navbar">
		<div class="logo">CAFE ROSE</div>
		<ul>
		    
			<li><a href="/menu">Menu</a></li>
			<li><a href="/book">Book a Table</a></li>
			<li><a href="/order">Order Online</a></li>
		</ul>
	</nav>



	<!-- Carousel Section -->
	<div id="carouselExampleIndicators" class="carousel slide"
		data-ride="carousel">
		<ol class="carousel-indicators">
			<li data-target="#carouselExampleIndicators" data-slide-to="0"
				class="active"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
		</ol>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img class="d-block w-100" src="/images/cafe2.png" alt="First slide">
			</div>
			<div class="carousel-item">
				<img class="d-block w-100" src="/images/cafe3.png"
					alt="Second slide">
			</div>
			<div class="carousel-item">
				<img class="d-block w-100" src="/images/cafe4.png" alt="Third slide">
			</div>
		</div>
		<a class="carousel-control-prev" href="#carouselExampleIndicators"
			role="button" data-slide="prev"> <span
			class="carousel-control-prev-icon" aria-hidden="true"></span> <span
			class="sr-only">Previous</span>
		</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
			role="button" data-slide="next"> <span
			class="carousel-control-next-icon" aria-hidden="true"></span> <span
			class="sr-only">Next</span>
		</a>
	</div>

	<!-- Drinks Menu Section -->
	<div class="menu-section">

		<div class="reservation-form">
			<h3>Reservation</h3>
			<h2>BOOK A TABLE</h2>
			<form action="/book" method="POST" onsubmit="return validateForm()">
				<div class="form-group">
					<input type="text" name="name" placeholder="Your Name*" required>
					<input type="email" id="email" name="email"
						placeholder="Email Address*" required>
				</div>
				<div class="form-group">
					<input type="tel" id="phone" name="phone" placeholder="Phone*"
						required> <input type="number" name="person"
						placeholder="Person*" required>
				</div>
				<div class="form-group">
					<input type="date" name="date" placeholder="DD/MM/YYYY*" required>
					<input type="time" name="time" placeholder="Time*" required>
				</div>
				<div class="form-group full-width">
					<textarea rows="4" name="message" placeholder="Message*"></textarea>
				</div>
				<button type="submit">BOOK NOW</button>
			</form>
		</div>


	</div>






	<!-- Bootstrap JS and dependencies -->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

	<!-- Trigger SweetAlert after form submission -->
	<%
	String alertMessage = (String) request.getAttribute("alertMessage");
	String alertType = (String) request.getAttribute("alertType");
	if (alertMessage != null && alertType != null) {
	%>
	<script>
        Swal.fire({
            icon: "<%=alertType.equals("success") ? "success" : "error"%>",
            title: "<%=alertType.equals("success") ? "Success" : "Error"%>",
            text: "<%=alertMessage%>",
            confirmButtonText: 'OK'
        }).then((result) => {
            if (result.isConfirmed && "<%=alertType.equals("success")%>") {
                window.location.href = "/menu";
            }
        });
    </script>
	<%
	}
	%>


	<script>
    function validateForm() {
        // Validate Phone Number
        var phone = document.getElementById("phone").value;
        var phoneRegex = /^\d{10}$/;
        if (!phoneRegex.test(phone)) {
            alert("Phone number must be exactly 10 digits.");
            return false;
        }

        // Validate Email
        var email = document.getElementById("email").value;
        var emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        if (!emailRegex.test(email)) {
            alert("Please enter a valid email address.");
            return false;
        }

        var dateInput = document.querySelector('input[name="date"]').value;
        var selectedDate = new Date(dateInput);
        var today = new Date();
        today.setHours(0, 0, 0, 0);

        if (selectedDate < today) {
            alert("Please select today's date or a future date.");
            return false;
        }


        return true; 
    }
    </script>

</body>
</html>




















