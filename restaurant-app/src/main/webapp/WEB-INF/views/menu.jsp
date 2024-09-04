<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
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
	text-align: center;
}

.menu-section h2 {
	font-size: 36px;
	margin-bottom: 20px;
	font-family: 'Arial', sans-serif;
	text-transform: uppercase;
	position: relative;
	display: inline-block;
	color: #FFC107;
}

.menu-section h2::after {
	content: '';
	width: 50px;
	height: 3px;
	background-color: #FFC107;
	position: absolute;
	bottom: -10px;
	left: 50%;
	transform: translateX(-50%);
}

.menu-category {
	display: flex;
	justify-content: space-around;
	/* Change from space-between to space-around */
	margin-bottom: 50px;
	text-align: left;
}

.menu-items {
	flex: 1; /* Ensures each column takes up equal space */
	padding: 0 10px; /* Adjust padding to control spacing */
}

.menu-category h3 {
	font-size: 24px;
	margin-bottom: 15px;
	color: #FFC107;
	text-align: center;
}

.menu-category ul {
	list-style: none;
	padding: 0;
	margin: 0;
}

.menu-category ul li {
	margin-bottom: 20px;
	font-size: 18px;
	line-height: 1.5;
	color: #eee;
}

.menu-category ul li span.price {
	float: right;
	color: #FFC107;
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
		    <li><a href="/">Home</a></li>
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
		<h2>Drinks</h2>

		<div class="menu-category">
			<div class="menu-items">
				<h3>Fresh Juice</h3>
				<ul>
					<li>Orange Juice <span class="price">Rs.500.00</span>
					</li>
					<li>Passion Fruit Juice <span class="price">Rs.890.00</span>
					</li>
					<li>Mixed Fruit Juice <span class="price">Rs.825.00</span>
					</li>
					<li>Mango Juice <span class="price">Rs.875.00</span>
					</li>
				</ul>
			</div>

			<div class="menu-items">
				<h3>Soft Drinks</h3>
				<ul>
					<li>Coca Cola <span class="price">Rs.550.00</span>
					</li>
					<li>Sprite <span class="price">Rs.550.00</span>
					</li>
					<li>Portello <span class="price">Rs.550.00</span>
					</li>
					<li>Coke Zero <span class="price">Rs.625.00</span>
					</li>
				</ul>
			</div>
		</div>
	</div>



	<!-- Menu Section -->
	<div class="menu-section">
		<h2>Foods</h2>

		<div class="menu-category">
			<div class="menu-items">
				<h3>Chicken (Serves 1-2 pax)</h3>

				<ul>
					<li>001. Chicken Fried Rice <span class="price">Rs.1200.00</span>
						<span class="description">Fragrant rice stir-fried with
							tender chicken, vegetables, and a blend of spices.</span>
					</li>
					<li>002. Yellow Rice <span class="price">Rs.1300.00</span> <span
						class="description">Traditional yellow rice cooked with
							turmeric, coconut milk, and aromatic spices.</span>
					</li>
					<li>003. Biriyani <span class="price">Rs.1500.00</span> <span
						class="description">Aromatic basmati rice cooked with
							choice of meat, spices, and herbs, served with raita.</span>
					</li>
					<li>004. Seafood Rice <span class="price">Rs.1700.00</span> <span
						class="description">A rich and flavorful dish with a mix of
							seafood, cooked in spiced rice.</span>
					</li>
				</ul>

			</div>

			<div class="menu-items">
				<h3>Starters (Serves 1-2 pax)</h3>
				<ul>
					<li>005. Chicken Wings <span class="price">Rs.1250.00</span> <span
						class="description">Crispy fried chicken wings tossed in a
							tangy dipping sauce.</span>
					</li>
					<li>006. Prawn Tempura <span class="price">Rs.1550.00</span> <span
						class="description">Crispy battered prawns served with a
							tangy dipping sauce.</span>
					</li>
					<li>007. Vegetable Rolls <span class="price">Rs.950.00</span> <span
						class="description">Golden-fried spring rolls stuffed with
							fresh vegetables, served with sweet chili sauce.</span>
					</li>
					<li>008. Spicy Chicken Satay <span class="price">Rs.1350.00</span>
						<span class="description">Grilled chicken skewers marinated
							in spicy peanut sauce, served with cucumber relish.</span>
					</li>
				</ul>

			</div>
		</div>
	</div>

	<!-- Bootstrap JS and dependencies -->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>




