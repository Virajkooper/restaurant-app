<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>Product Grid</title>
<!-- Bootstrap CSS -->
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">
<style>
body {
	font-family: 'Arial', sans-serif;
	margin: 0;
	padding: 0;
	background-color: #fff;
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

.product-grid {
	padding: 20px 0;
}

.product-card {
	border: 1px solid #ddd;
	border-radius: 5px;
	padding: 10px;
	text-align: center;
	transition: transform 0.2s ease-in-out;
}

.product-card img {
	max-width: 100%;
	border-radius: 5px;
	margin-bottom: 15px;
}

.product-card h5 {
	font-size: 18px;
	margin: 10px 0;
}

.product-card .price {
	font-size: 16px;
	font-weight: bold;
	margin: 10px 0;
}

.product-card .add-to-cart-btn {
	background-color: #000;
	color: #fff;
	padding: 10px;
	border-radius: 50%;
	width: 40px;
	height: 40px;
	display: flex;
	align-items: center;
	justify-content: center;
	margin: 0 auto;
	transition: background-color 0.3s ease-in-out;
}

.product-card .add-to-cart-btn:hover {
	background-color: #444;
}

.product-card:hover {
	transform: translateY(-5px);
}

.breadcrumb {
	background-color: transparent;
	margin-bottom: 20px;
}

.breadcrumb a {
	color: #000;
}

/* Cart Sidebar */
.cart-sidebar {
	position: fixed;
	right: 0;
	top: 0;
	width: 350px;
	height: 100%;
	background-color: #f8f9fa;
	box-shadow: -4px 0 10px rgba(0, 0, 0, 0.1);
	z-index: 1050;
	padding: 20px;
	overflow-y: auto;
	display: none; /* Hide by default */
}

.cart-sidebar h4 {
	margin-bottom: 20px;
	font-size: 24px;
	font-weight: bold;
	color: #333;
}

.cart-sidebar .cart-item {
	display: flex;
	justify-content: space-between;
	align-items: center;
	margin-bottom: 20px;
	padding-bottom: 15px;
	border-bottom: 1px solid #ddd;
}

.cart-sidebar .cart-item img {
	width: 60px;
	height: 60px;
	object-fit: cover;
	border-radius: 5px;
	margin-right: 15px;
}

.cart-sidebar .cart-item-details {
	flex-grow: 1;
}

.cart-sidebar .cart-item-details h5 {
	font-size: 16px;
	margin: 0;
}

.cart-sidebar .cart-item-details small {
	color: #999;
}

.cart-sidebar .cart-item-quantity {
	display: flex;
	align-items: center;
}

.cart-sidebar .cart-item-quantity button {
	background-color: #f8f9fa;
	border: 1px solid #ccc;
	padding: 5px;
	cursor: pointer;
}

.cart-sidebar .cart-item-quantity input {
	width: 40px;
	text-align: center;
	border: none;
	background-color: #f8f9fa;
}

.cart-sidebar .cart-item-quantity input:focus {
	outline: none;
}

.cart-sidebar .cart-item-price {
	font-size: 16px;
	font-weight: bold;
	color: #333;
	margin-right: 10px;
}

.cart-sidebar .cart-item-remove {
	color: #e74c3c;
	cursor: pointer;
	font-size: 18px;
}

.cart-sidebar .cart-total {
	text-align: right;
	margin-bottom: 20px;
}

.cart-sidebar .cart-total h5 {
	font-size: 20px;
	font-weight: bold;
	color: #333;
}

.cart-sidebar .cart-buttons {
	display: flex;
	justify-content: space-between;
}

.cart-sidebar .cart-buttons button {
	flex-grow: 1;
	padding: 10px;
	border: none;
	cursor: pointer;
	font-size: 16px;
	font-weight: bold;
	color: #fff;
}

.cart-sidebar .cart-buttons .checkout-btn {
	background-color: #28a745;
	margin-right: 10px;
}

.cart-sidebar .cart-buttons .continue-shopping-btn {
	background-color: #6c757d;
}

.cart-sidebar .cart-buttons button:hover {
	opacity: 0.9;
}

/* Additional Styling */
.close-btn {
	position: absolute;
	top: 10px;
	right: 10px;
	font-size: 18px;
	cursor: pointer;
	color: #333;
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
		</ul>
	</nav>

	<br />
	<br />
	<div class="container">

		<br />
		<!-- Product Grid -->
		<h2>Drinks</h2>
		<div class="row product-grid">


			<div class="col-md-3 col-sm-6">
				<div class="product-card" data-name="Orange Juice" data-price="500.00" data-image="/images/drink1.jpg">
					<img src="/images/drink1.jpg" style="width:200px; height:150px" alt="orange">
					<h5>Orange Juice</h5>
					<div class="price">Rs. 500.00</div>
					<div class="add-to-cart-btn" data-toggle="modal"
						data-target="#productModal">
						<i class="fas fa-plus"></i>
					</div>
				</div>
			</div>
			
		
    
			
			<div class="col-md-3 col-sm-6">
				<div class="product-card" data-name="Passion Fruit Juice" data-price="890.00" data-image="/images/drink2.jpg">
					<img src="/images/drink2.jpg"  alt="passion">
					<h5>Passion Fruit Juice</h5>
					<div class="price">Rs. 890.00</div>
					<div class="add-to-cart-btn" data-toggle="modal"
						data-target="#productModal">
						<i class="fas fa-plus"></i>
					</div>
				</div>
			</div>
			<div class="col-md-3 col-sm-6">
				<div class="product-card" data-name="Mixed Fruit Juice" data-price="825.00" data-image="/images/drink5.png" >
					<img src="/images/drink5.png"  alt="mixed">
					<h5>Mixed Fruit Juice</h5>
					<div class="price">Rs. 825.00</div>
					<div class="add-to-cart-btn" data-toggle="modal"
						data-target="#productModal">
						<i class="fas fa-plus"></i>
					</div>
				</div>
			</div>
			<div class="col-md-3 col-sm-6">
				<div class="product-card" data-name="Mango Juice" data-price="890.00" data-image="/images/drink6.png">
					<img src="/images/drink6.png" alt="mango">
					<h5>Mango Juice </h5>
					<div class="price">Rs. 875.00</div>
					<div class="add-to-cart-btn" data-toggle="modal"
						data-target="#productModal">
						<i class="fas fa-plus"></i>
					</div>
				</div>
			</div>
		</div>





		<!-- Product Grid -->
		<h2>Foods</h2>
		<div class="row product-grid">


			<div class="col-md-3 col-sm-6">
				<div class="product-card" data-name="Chicken Fried Rice" data-price="1200.00" data-image="/images/meal1.jpg">
					<img src="/images/meal1.jpg" style="width:200px; height:300px" alt="Chicken">
					<h5>Chicken Fried Rice</h5>
					<div class="price">Rs. 1200.00</div>
					<div class="add-to-cart-btn" data-toggle="modal"
						data-target="#productModal">
						<i class="fas fa-plus"></i>
					</div>
				</div>
			</div>
			<div class="col-md-3 col-sm-6">
				<div class="product-card" data-name="Yellow Rice" data-price="1300.00" data-image="/images/meal2.jpg">
					<img src="/images/meal2.jpg" style="width:200px; height:300px" alt="Yellow Rice">
					<h5>Yellow Rice</h5>
					<div class="price">Rs. 1300.00</div>
					<div class="add-to-cart-btn" data-toggle="modal"
						data-target="#productModal">
						<i class="fas fa-plus"></i>
					</div>
				</div>
			</div>
			<div class="col-md-3 col-sm-6">
				<div class="product-card" data-name="Biriyani" data-price="1500.00" data-image="/images/meal6.jpeg">
					<img src="/images/meal6.jpeg"style="width:200px; height:300px" alt="Biriyani">
					<h5>Biriyani</h5>
					<div class="price">Rs. 1500.00</div>
					<div class="add-to-cart-btn" data-toggle="modal"
						data-target="#productModal">
						<i class="fas fa-plus"></i>
					</div>
				</div>
			</div>
			<div class="col-md-3 col-sm-6">
				<div class="product-card" data-name="Seafood Rice" data-price="1700.00" data-image="/images/meal5.jpg">
					<img src="/images/meal5.jpg" style="width:200px; height:300px" alt="Sea food">
					<h5>Seafood Rice</h5>
					<div class="price">Rs. 1700.00</div>
					<div class="add-to-cart-btn" data-toggle="modal"
						data-target="#productModal">
						<i class="fas fa-plus"></i>
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>



	<!-- Cart Sidebar -->
	<div class="cart-sidebar" id="cartSidebar"></div>



	<!-- Modal Structure -->
	<div class="modal fade" id="productModal" tabindex="-1"
		aria-labelledby="productModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="productModalLabel"></h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<p>
						Item price: <span id="itemPrice">Rs. 250.00</span>
					</p>
					<p>Item Quantity:</p>
					<div class="input-group mb-3">
						<div class="input-group-prepend">
							<button class="btn btn-outline-secondary" type="button"
								id="decreaseQty">-</button>
						</div>
						<input type="text" class="form-control" id="itemQuantity"
							value="1" readonly>
						<div class="input-group-append">
							<button class="btn btn-outline-secondary" type="button"
								id="increaseQty">+</button>
						</div>
					</div>
					<p>
						Sub Total: <span id="subTotal">Rs. 250.00</span>
					</p>
				</div>
				<div class="modal-footer">
					<button type="button" id="addToCartBtn" class="btn btn-primary">Add
						to Cart</button>
				</div>
			</div>
		</div>
	</div>



	<!-- Bootstrap JS and dependencies -->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	<script src="https://kit.fontawesome.com/a076d05399.js"></script>
	<script>
	document.addEventListener('DOMContentLoaded', function () {
	    const productCards = document.querySelectorAll('.product-card');
	    const modalTitle = document.getElementById('productModalLabel');
	    const itemPriceSpan = document.getElementById('itemPrice');
	    const quantityInput = document.getElementById('itemQuantity');
	    const subTotalSpan = document.getElementById('subTotal');

	    productCards.forEach(card => {
	        card.addEventListener('click', function () {
	            const itemName = this.getAttribute('data-name');
	            const itemPrice = parseFloat(this.getAttribute('data-price'));
	            const itemImage = this.getAttribute('data-image');

	            // Set the modal title and price
	            modalTitle.textContent = itemName;
	            itemPriceSpan.textContent = 'Rs. ' + itemPrice.toFixed(2);
	            quantityInput.value = 1; // Reset quantity to 1 when opening modal

	            // Calculate and update the subtotal
	            updateSubTotal(itemPrice, quantityInput.value);

	            // Store the item price for quantity calculation
	            quantityInput.dataset.price = itemPrice;

	            // Adjust the modal's event listeners
	            document.getElementById('increaseQty').addEventListener('click', function () {
	                let quantity = parseInt(quantityInput.value);
	                quantityInput.value = quantity + 1;
	                updateSubTotal(itemPrice, quantityInput.value);
	            });

	            document.getElementById('decreaseQty').addEventListener('click', function () {
	                let quantity = parseInt(quantityInput.value);
	                if (quantity > 1) {
	                    quantityInput.value = quantity - 1;
	                    updateSubTotal(itemPrice, quantityInput.value);
	                }
	            });
	        });
	    });

	    function updateSubTotal(price, quantity) {
	        let subTotal = price * quantity;
	        subTotalSpan.textContent = 'Rs. ' + subTotal.toFixed(2);
	    }
	});

</script>


	<script>
	
	addToCartBtn.addEventListener('click', function () {
	    const itemName = modalTitle.textContent;
	    const itemPrice = parseFloat(itemPriceSpan.textContent.replace('Rs. ', ''));
	    const itemQuantity = parseInt(quantityInput.value);

	    addItemToCart(itemName, itemPrice, itemQuantity);
	    updateCartTotal();
	});

	document.addEventListener('DOMContentLoaded', function () {
	    const cartSidebar = document.getElementById('cartSidebar');
	    const addToCartBtn = document.getElementById('addToCartBtn');
	    const cartItemsContainer = document.querySelector('.cart-sidebar');

	    let cartItems = [];

	    addToCartBtn.addEventListener('click', function () {
	        const itemName = document.querySelector('.modal-title').textContent;
	        const itemPrice = parseFloat(document.getElementById('itemPrice').textContent.replace('Rs. ', ''));
	        const itemQuantity = parseInt(document.getElementById('itemQuantity').value);

	        addItemToCart(itemName, itemPrice, itemQuantity);
	        updateCartTotal();
	    });

	    function addItemToCart(name, price, quantity) {
	        cartItems.push({ name, price, quantity });
	        renderCartItems();
	        cartSidebar.style.display = 'block'; // Show the cart sidebar when an item is added
	    }

	    function renderCartItems() {
	        const cartItemsList = cartItems.map(item => `
	            <div class="cart-item">
	                <img src="image-url-here" alt="${item.name}">
	                <div class="cart-item-details">
	                    <h5>${item.name}</h5>
	                    <small>Quantity: ${item.quantity}</small>
	                </div>
	                <div class="cart-item-quantity">
	                    <span class="cart-item-price">Rs. ${(item.price * item.quantity)}</span>
	                </div>
	                <span class="cart-item-remove">&times;</span>
	            </div>
	        `).join('');

	        cartItemsContainer.innerHTML = `
	            <span class="close-btn">&times;</span>
	            <h4>Cart</h4>
	            ${cartItemsList}
	            <div class="cart-total">
	            
	            </div>
	            <div class="cart-buttons">
	                <button class="checkout-btn">PROCEED TO CHECKOUT</button>
	                <button class="continue-shopping-btn">CONTINUE SHOPPING</button>
	            </div>
	        `;

	        // Re-bind event listeners after re-rendering
	        document.querySelector('.close-btn').addEventListener('click', () => {
	            cartSidebar.style.display = 'none';
	        });

	        document.querySelectorAll('.cart-item-remove').forEach((removeBtn, index) => {
	            removeBtn.addEventListener('click', function () {
	                removeItemFromCart(index);
	            });
	        });
	    }

	    function removeItemFromCart(index) {
	        cartItems.splice(index, 1);
	        renderCartItems();
	        updateCartTotal();
	    }

	    function calculateCartTotal() {
	       return cartItems.reduce((total, item) => total + (item.price * item.quantity), 0);
	    
	    }

	    function updateCartTotal() {
	        document.querySelector('.cart-total h5').textContent = 'Total: Rs. ' + calculateCartTotal();
	    }
	});
</script>


</body>
</html>
