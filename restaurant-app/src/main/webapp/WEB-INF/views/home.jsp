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

/* Welcome Section */
.hero {
	display: flex;
	justify-content: center;
	align-items: center;
	background: url('/images/cafe.png') no-repeat center center/cover;
	height: 100vh;
	text-align: center;
	color: #fff;
	position: relative;
	z-index: 1;
}

.hero::before {
	content: "";
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background-color: rgba(0, 0, 0, 0.5); /* Dark overlay */
	z-index: -1;
}

.hero h1 {
	font-size: 48px;
	margin-bottom: 20px;
	font-family: 'Arial', sans-serif;
}

.hero p {
	font-size: 24px;
	margin-bottom: 10px;
	font-weight: bold;
}

.hero span {
	font-size: 18px;
	font-style: italic;
	color: #FFC107; /* Gold color for "Welcome!" */
}

.hero a {
	color: #fff;
	font-size: 18px;
	text-decoration: none;
	padding: 10px 20px;
	border: 2px solid #FFC107;
	border-radius: 5px;
	transition: background-color 0.3s, color 0.3s;
}

.hero a:hover {
	background-color: #FFC107;
	color: #000;
}
</style>
</head>
<body>

	<!-- Navigation Bar -->
	<nav class="navbar">
		<div class="logo">CAFE ROSE</div>
		<ul>
            <li><a href="/">Home</a></li>
			<li><a href="/menuall">Menu</a></li>
			<li><a href="/users/register">Register</a></li>
			<li><a href="/users/login">Login</a></li>
			<li></li>
		</ul>
	</nav>

	<!-- Welcome Section -->
	<section class="hero">
		<div class="hero-content">
			<p>
				<span>Welcome!</span>
			</p>
			<h1 class="logo">CAFE ROSE</h1>

			<a href="/users/login">Book a Table</a>
		</div>
	</section>


</body>
</html>
