<cfoutput>
	<!DOCTYPE html>
	<html lang="en">
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>Admin Dashboard</title>
		 <!--- <link rel="stylesheet" href="/includes/assets/css/style.css"> --->
	</head>
	
	<body>
	
		<header class="p-3">
			<nav class="navbar navbar-expand-lg">
				<div class="container-fluid">
					<a class="navbar-brand" href="">
						<img src="/includes/images/download.png" alt="Logo">
					</a>
					<div class="collapse navbar-collapse" id="navbarSupportedContent">
						<ul class="navbar-nav ml-auto">
							<li class="nav-item">
								<a class="nav-link active text-white" aria-current="page" href="">Home</a>
							</li>
							<li class="nav-item">
								<a class="nav-link text-white" href="##sevice">Service</a>
							</li>
							<li class="nav-item">
								<a class="nav-link text-white" href="##about">About Us</a>
							</li>
							<li class="nav-item">
								<a class="nav-link text-white" href="##gal">Gallery</a>
							</li>
							<li class="nav-item">
								<a class="nav-link text-white" href="##contact">Contact Us</a>
							</li>
						   
						</ul>
					</div>
				</div>
			</nav>
		</header>
	
		<div class="image-container">
			<img src="/includes/images/1693563230013.jpg" alt="Girl in a jacket" style="height: 170px;">
		</div>
	<div>
		<br>
	   <center><h3 class="display-5 " id="sevice"><u>Services</u></h3></center> 
	   <div class="container mt-4">
		<div class="row">
			<div class="col-md-4 mb-3">
				<div class="card">
					<div class="card-body text-center">
						<h5 class="card-title">Admin Side</h5>
						<p class="card-text">Our hospital operations with the Admin panel. Manage staff, handle records, and ensure smooth operations. Access detailed reports and control various aspects of hospital management. Optimize administrative workflows. </p>
						<button class="btn btn-primary"><a href="#event.buildLink('Main/loginHandler_admin')#" class="card-link text-white">Login</a></button>
					</div>
				</div>
			</div>
			<div class="col-md-4 mb-3">
				<div class="card">
					<div class="card-body text-center">
						<h5 class="card-title">Doctor Side</h5>
						<p class="card-text">Manage patient care and appointments through the Doctor panel. Access detailed patient records and update treatment plans. Schedule and track appointments efficiently. Collaborate with other healthcare professionals for better patient outcomes.</p>
						<button class="btn btn-primary"><a href="#event.buildLink('Main/loginHandler_doctor')#" class="card-link text-white">Login</a></button>
					</div>
				</div>
			</div>
			<div class="col-md-4 mb-3">
				<div class="card">
					<div class="card-body text-center">
						<h5 class="card-title">Patient Side</h5>
						<p class="card-text">Book and manage appointments easily from the Patient panel. View your medical history and update personal information. Access health records and track your treatment progress. Communicate with healthcare providers conveniently.</p>
						<button class="btn btn-primary"><a href="Main/loginHandler_patient" class="card-link text-white">Login</a></button>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<section class="about" id="about">
		<div class="about-content">
			<img src="/includes/images/paient.webp" alt="About Our Hospital" class="about-image">
			<div class="about-text">
				<h2>About Our Hospital</h2>
				<p>Welcome to our Hospital Name, a leading healthcare provider dedicated to delivering compassionate and comprehensive medical care. Founded with a vision to improve community health, our hospital combines state-of-the-art technology with a skilled team of healthcare professionals.
	
					We offer a wide range of services, including emergency care, specialized treatments, and preventive health programs. Our facilities are designed to ensure patient comfort and safety, featuring modern amenities and a supportive environment.
					
					At our Hospital Name, we prioritize patient-centered care, emphasizing personalized treatment plans and holistic support. Our multidisciplinary team works collaboratively to address complex medical needs and achieve optimal health outcomes.
					
					Committed to excellence, we continuously invest in advanced medical research and education. Our dedicated staff is here to provide expert care, from routine check-ups to complex procedures, with empathy and professionalism.
					
					Thank you for choosing our Hospital Name as your trusted healthcare partner. We are honored to serve you and your loved ones, striving every day to enhance the health and well-being of our community.
					
					</p>
			</div>
		</div>
	</section>
	
	<section class="gallery" id="gal">
		<center><h4>Gallery</h4></center>
		<div class="gallery-images">
			<img src="/includes/images/images (1).jpg" alt="Gallery Image">
		</div>
		<div class="gallery-images">
			<img src="/includes/images/images (2).jpg" alt="Gallery Image">
		</div>
		<div class="gallery-images">
			<img src="/includes/images/images (3).jpg" alt="Gallery Image">
		</div>
	
	</section>
	<style>
		 .contact-form {
				margin-top: 20px;
			}
			.contact-form label {
				margin-top: 10px;
			}
	</style>
	<div class="container">
		<h1 class="mt-4">Contact Us</h1>
		
		<!-- Contact Form -->
		<form method="post" action="" class="contact-form">
			<div class="form-group">
				<label for="name">Name:</label>
				<input type="text" id="name" name="name" class="form-control" required>
			</div>
	
			<div class="form-group">
				<label for="address">Address:</label>
				<input type="text" id="address" name="address" class="form-control" required>
			</div>
	
			<div class="form-group">
				<label for="phone">Phone Number:</label>
				<input type="tel" id="phone" name="phone" class="form-control" required>
			</div>
	
			<div class="form-group">
				<label for="message">Message:</label>
				<textarea id="message" name="message" class="form-control" rows="1" required></textarea>
			</div>
	
			<button type="submit" class="btn btn-primary mt-3">Send Message</button>
		</form>
	</div>
	<footer>
		<div class="contact-info" id="contact">
			<center><h1>Contacts us</h1></center>
			<p>Address: 123 Street Name, City, Country</p>
			<p>Phone: +123 456 7890</p>
			<p>Email: contact@hospital.com</p>
		</div>
	</footer>
	
	 
		<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
		<script src="dashboard.js"></script>
	</body>
	</html>
	</cfoutput>