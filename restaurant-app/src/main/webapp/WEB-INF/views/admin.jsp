<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>Home - Cafe ROSA</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<style>

/* Navigation Bar */
.navbar {
	display: flex;
	justify-content: space-between;
	align-items: center;
	padding: 15px 30px;
	background-color: rgba(0, 0, 0, 0.8);
	color: #fff;
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

.table-container {
	width: 100%;
	margin: 50px auto;
	background-color: #fff;
	padding: 20px;
	box-shadow: 0px 0px 10px 0px #aaa;
	border-radius: 8px;
	max-height: 500px; /* Adjust the max height as needed */
	overflow-y: auto; /* Enables vertical scrolling */
}

table {
	width: 100%;
	border-collapse: collapse;
}

th, td {
	padding: 10px;
	border-bottom: 1px solid #ddd;
	text-align: left;
}

th {
	background-color: #FFC107;
	color: white;
}

/* Menu Section */
.menu-section {
	padding: 50px;
	background-color: #000;
	color: #fff;
	text-align: center;
}
</style>

</head>
<body>

	<!-- Navigation Bar -->
	<nav class="navbar">
		<div class="logo">CAFE ROSE</div>
		<ul>
		    <li><a href="/menu">Menu</a></li>
			<li><a href="/book">Book a Table</a></li>
			<li><a href="/order">Order Online</a></li>
			<li><a href="/staff">Reservation</a></li>
			<li><a href="/admin">Users</a></li>
		

		</ul>
	</nav>



	<!-- Step 5: Images Section -->
	<div class="container mt-5" id="images-section">

		<div class="row g-1">
			<div class="col-sm-8 col-12">


				<div class="container">
					<div class="container mt-5">
						<form method="get" action="">
							<div class="input-group mb-3">
								<input type="text" class="form-control" name="search"
									placeholder="Search by Name or Email or Role"
									value="${param.search}">
								<button class="btn btn-primary" type="submit">Search</button>
							</div>
						</form>
					</div>

					<div class="table-container">
						<h2>User List</h2>
						<table>
							<thead>
								<tr>
									<th>User name</th>
									<th>Email</th>
									<th>Phone</th>
									<th>Role</th>

								</tr>
							</thead>
							<tbody>
								<c:forEach var="user" items="${users}">
									<c:if
										test="${empty param.search or (user.username.toLowerCase().contains(param.search.toLowerCase()) or user.email.toLowerCase().contains(param.search.toLowerCase())or user.role.toLowerCase().contains(param.search.toLowerCase()))}">
										<tr>
											<td>${user.username}</td>
											<td>${user.email}</td>
											<td>${user.phoneno}</td>
											<td>${user.role}</td>

										</tr>
									</c:if>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>

			<div class="col-sm-4 col-12">
				<img src="/images/cafe2.png" style="height: 450px; width: 900px"
					class="img-fluid" alt="Image 1">
			</div>

		</div>

	</div>





	<!-- Bootstrap JS (optional) -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

