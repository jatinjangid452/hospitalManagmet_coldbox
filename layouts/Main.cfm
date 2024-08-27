<cfoutput>
<!doctype html>
<html lang="en">
<head>
	<!--- Metatags --->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="ColdBox Application Template">
    <meta name="author" content="Ortus Solutions, Corp">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	<link rel="stylesheet" href="styles.css">
	<style>
		.navbar {
			background: rgb(111,66,193); 
			background: linear-gradient(135deg, rgb(111,66,193), rgb(0,123,255));
			position: relative;
			z-index: 1; 
		}

		.navbar-brand img {
			width: 40px;
			height: 40px; 
		}

		.navbar-nav {
			margin-left: auto;
		}

		.header-text {
			position: relative; 
			text-align: center; 
			color: white; 
			padding: 100px 0; 
			z-index: 1; 
		}

		.image-container img {
			width: 100%;
			height: auto;
		}

		.card {
			border-radius: 0.75rem; 
		}
		.about {
	padding: 20px;
}

.about-content {
	display: flex;
	align-items: center;
}

.about-image {
	width: 500px;
	height: auto;
	margin-right: 20px; 
}

.about-text {
	max-width: 600px; 
}
.gallery {
	text-align: center; 
	padding: 20px;
}

.gallery h4 {
	margin-bottom: 20px;
}

.gallery-images {
	display: inline-block; 
	margin: 10px;
}

.gallery-images img {
	width: 100%; 
	max-width: 300px; 
	height: auto;
	border-radius: 8px; 
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
	transition: transform 0.3s;
}

.gallery-images img:hover {
	transform: scale(1.05); 
}
footer {
	background-color: lightgray;/
	color: darkslategray;
	padding: 10px;
	text-align: center; 
	border-top: 1px solid gainsboro; 
	width: 100%; 
	position: relative; 
}

.contact-info {
	margin: 0;
}

.contact-info p {
	margin: 5px 0; 
	font-size: 14px; 
}


	</style>
	<!---Base URL --->
	<base href="#event.getHTMLBaseURL()#" />

	<!---
		CSS
		- Bootstrap
		- Alpine.js
	--->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
	<style>
		.text-blue { color:##379BC1; }
	</style>

	<!--- Title --->
	<title>Welcome to Coldbox!</title>
</head>
<body

>

		
						

				
					
	<!---Container And Views --->
	<main class="flex-shrink-0">
		#view()#
	</main>

	<!--- Footer --->
	

	<!---
		JavaScript
		- Bootstrap
		- Popper
		- Alpine.js
	--->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js" integrity="sha384-cuYeSxntonz0PPNlHhBs68uyIAVpIIOZZ5JqeqvYYIcEL727kskC66kF92t6Xl2V" crossorigin="anonymous"></script>
	<script defer src="https://unpkg.com/alpinejs@3.x.x/dist/cdn.min.js"></script>
</body>
</html>
</cfoutput>
