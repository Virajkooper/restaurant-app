<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>Home - Cafe ROSA</title>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #000;
}

.login-container {
	width: 300px;
	margin: 0 auto;
	padding: 30px;
	background-color: #ffffff;
	box-shadow: 0px 0px 10px 0px #000;
	margin-top: 100px;
	border-radius: 8px;
}

.login-container h2 {
	text-align: center;
	margin-bottom: 20px;
	color: #FFC107;
}

.login-container input[type="text"], .login-container input[type="password"],
	.login-container select {
	width: 100%;
	padding: 10px;
	margin: 10px 0;
	border: 1px solid #ddd;
	border-radius: 4px;
}

.login-container input[type="submit"] {
	width: 100%;
	padding: 10px;
	background-color: #FFC107;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}

.login-container input[type="submit"]:hover {
	background-color: #FFC107;
}

a.small-link {
	font-size: 12px;
	color: #000;
	text-decoration: none;
}

a.small-link:hover {
	text-decoration: underline;
	color: #333;
}

.center-link {
	text-align: center;
}
</style>
</head>
<body>
	<div class="login-container">
		<h2>Login</h2>
		<form action="/users/loginUser" method="POST">
			<input type="text" name="email" placeholder="Email" required>
			<input type="password" name="password" placeholder="Password"
				required><br />
			<br /> <input type="submit" value="Login"><br />
			<br />
			<div class="center-link">
				<a href="/users/register" class="small-link">Don't Have an
					Account? Register Now</a>
			</div>
		</form>
	</div>
</body>
</html>
