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
	width: 600px;
	margin: 0 auto;
	margin-top: 100px;
	display: flex;
	background-color: #ffffff;
	box-shadow: 0px 0px 10px 0px #000;
	border-radius: 8px;
}

.left-column {
	width: 50%;
	background: url('/images/cafe.png') no-repeat center center/cover;
	border-top-left-radius: 8px;
	border-bottom-left-radius: 8px;
}

.right-column {
	width: 50%;
	padding: 30px;
	border-top-right-radius: 8px;
	border-bottom-right-radius: 8px;
}

.right-column h2 {
	text-align: center;
	margin-bottom: 20px;
	color: #FFC107;
}

.right-column input[type="text"], .right-column input[type="email"],
	.right-column input[type="number"], .right-column input[type="password"]
	{
	width: 100%;
	padding: 10px;
	margin: 10px 0;
	border: 1px solid #ddd;
	border-radius: 4px;
}

.right-column input[type="submit"] {
	width: 100%;
	padding: 10px;
	background-color: #FFC107;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}

.right-column input[type="submit"]:hover {
	background-color: #e0a800;
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
		<div class="left-column">
			<!-- Background image is applied here -->
		</div>
		<!-- Display error message if it exists -->

		<div class="right-column">
			<h2>Register</h2>
			<form action="/users/saveUser" method="POST"
				onsubmit="return validateForm()">
				<input type="text" name="username" placeholder="Username" required>
				<input type="email" id="email" name="email" placeholder="Email"
					required> <input type="text" id="phoneno" name="phoneno"
					placeholder="Phone number" required> <input type="password"
					id="password" name="password" placeholder="Password" required>
				<input type="password" id="confirmPassword"
					placeholder="Confirm Password" required><br />
				<br /> <input type="submit" value="Register"><br />
				<br />
				<div class="center-link">
					<a href="/users/login" class="small-link">Already Have an
						Account? Login Now</a>
				</div>
			</form>
		</div>
	</div>
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
                window.location.href = "/users/login";
              
            }
        });
    </script>
	<%
	}
	%>




	<script>
    function validateForm() {
        // Validate Phone Number
        var phoneno = document.getElementById("phoneno").value;
        var phoneRegex = /^\d{10}$/;
        if (!phoneRegex.test(phoneno)) {
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

        // Validate Passwords 
        var password = document.getElementById("password").value;
        var confirmPassword = document.getElementById("confirmPassword").value;
        if (password !== confirmPassword) {
            alert("Passwords do not match. Please try again.");
            return false;
        }

        return true; 
    }
    </script>
</body>

</html>
