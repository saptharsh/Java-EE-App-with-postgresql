<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<script type="text/javascript">
	function clearForms() {
		var i;
		for (i = 0; (i < document.forms.length); i++) {
			document.forms[i].reset();
		}
	}

	function validateForm() {
		var x = document.forms["myForm"]["un"].value;
		if (x == null || x == "") {
			alert("Username must be filled out");
			document.getElementById('un').focus();
			return false;
		}
		var y = document.forms["myForm"]["pw"].value;
		if (y == null || y == "") {
			alert("password must be filled out");
			document.getElementById('pw').focus();
			return false;
		}
	}
</script>


<title>MVC JSP & Servlets</title>

<!-- Bootstrap core CSS -->
<link href="css/bootstrap.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="css/custom.css" rel="stylesheet">


</head>

<body onLoad="clearForms()" onunload="clearForms()">

	<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#navbar" aria-expanded="false"
					aria-controls="navbar">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">JAVA Store</a>
			</div>
			<div id="navbar" class="navbar-collapse collapse">

				<form class="navbar-form navbar-right" action="LoginServlet"
					onsubmit="return validateForm()" method="post" name="myForm">
					<div class="form-group">
						<input type="text" placeholder="Enter your user name"
							class="form-control" name="un" id="un">
					</div>
					<div class="form-group">
						<input type="password" placeholder="Enter your password"
							class="form-control" name="pw" id="pw">
					</div>
					<button type="submit" class="btn btn-success">Sign in</button>
				</form>
			</div>
			<!--/.navbar-collapse -->
		</div>
	</nav>

	<div class="container">

		<div class="row">

			<div class="col-xs-6"></div>

			<div class="col-xs-6">
				<div class="reg-block">
					<h2>Sign-Up</h2>
					<b>Get the most out of this!</b>
					<form class="form-reg">
						<div class="form-group">
							<input type="text" class="form-control" id="firstName"
								placeholder="First Name">
						</div>
						<div class="form-group">
							<input type="text" class="form-control" id="lastName"
								placeholder="Last Name">
						</div>
						<div class="form-group">
							<input type="text" class="form-control" id="phoneNumber"
								placeholder="Mobile Number">
						</div>
						<div class="form-group">
							<input type="password" class="form-control" id="password1"
								placeholder="Password">
						</div>
						<div class="form-group">
							<input type="password" class="form-control" id="password2"
								placeholder="Re - Enter Password">
						</div>
						<div class="form-group">
							<label> <input type="radio" name="optionsRadios"
								id="optionsRadios1" value="option1"> Male 
							</label>
							<label> <input type="radio" name="optionsRadios"
								id="optionsRadios2" value="option2"> Female
							</label>
						</div>
						<div class="form-group">
							<input type="text" class="form-control" id="userName"
								placeholder="Choose Unique User Name">
						</div>
						<div class="form-group">
							<input type="email" class="form-control" id="email"
								placeholder="Enter Email Address">
						</div>
						
						<button type="submit" class="btn btn-success">Sign-Up</button>
					</form>
				</div>
			</div>

		</div>
	</div>

	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>

</body>
</html>
