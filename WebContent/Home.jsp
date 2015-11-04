<%@page import="org.sap.javajsp.model.UserBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<!-- Bootstrap core CSS -->
<link href="css/bootstrap.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="css/custom.css" rel="stylesheet">


</head>
<body>

	<div class="container">
		<div class="home-container">

			<!-- Static navbar -->
			<nav class="navbar navbar-default">
			<div class="container-fluid">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#navbar" aria-expanded="false"
						aria-controls="navbar">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="#">Project name</a>
				</div>
				<div id="navbar" class="navbar-collapse collapse">
					<ul class="nav navbar-nav">
						<li class="active"><a href="#">Home</a></li>
						<li><a href="#">About</a></li>
						<li><a href="#">Contact</a></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown" role="button" aria-haspopup="true"
							aria-expanded="false">Dropdown <span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="#">Action</a></li>
								<li><a href="#">Another action</a></li>
								<li><a href="#">Something else here</a></li>
								<li role="separator" class="divider"></li>
								<li class="dropdown-header">Nav header</li>
								<li><a href="#">Separated link</a></li>
								<li><a href="#">One more separated link</a></li>
							</ul></li>
					</ul>
					<ul class="nav navbar-nav navbar-right">
						<li class="active"><a href="./">Default <span
								class="sr-only">(current)</span></a></li>
						<li><a href="../navbar-static-top/">Static top</a></li>
						<li><a href="../navbar-fixed-top/">Fixed top</a></li>
					</ul>
				</div>
				<!--/.nav-collapse -->
			</div>
			<!--/.container-fluid --> </nav>

			<!-- Main component for a primary marketing message or call to action -->
			<div class="jumbotron">
				<h1>Navbar example</h1>
				<p>This example is a quick exercise to illustrate how the
					default, static navbar and fixed to top navbar work. It includes
					the responsive CSS and HTML, so it also adapts to your viewport and
					device.</p>
				<p>
					<a class="btn btn-lg btn-primary" href="../../components/#navbar"
						role="button">View navbar docs &raquo;</a>
				</p>
			</div>
		</div>


	</div>
	<!-- /container -->

	<div class="container">
		<div class="home-container">

			<!-- Example row of columns -->
			<div class="row">
				<div class="main-content">


					<div class="col-md-4">
						<div class="left-div">
							<h2>Heading</h2>
							
							<div class="status">
								<%
									UserBean currentUser = (UserBean) (session.getAttribute("currentSessionUser"));
								%>

								Welcome
								<%=currentUser.getFirstName() + " " + currentUser.getLastName()%>
							</div>

							<p>
								<a class="btn btn-primary" href="LogoutServlet" role="button">Logout</a>
							</p>
						</div>
					</div>

					<div class="col-md-8">
						<div class="right-div">
						<h2>Heading</h2>
						<p>Donec id elit non mi porta gravida at eget metus. Fusce
							dapibus, tellus ac cursus commodo, tortor mauris condimentum
							nibh, ut fermentum massa justo sit amet risus. Etiam porta sem
							malesuada magna mollis euismod. Donec sed odio dui.</p>
						<p>
							<a class="btn btn-default" href="#" role="button">View
								details &raquo;</a>
						</p>
						</div>
					</div>
				</div>
			</div>


			<hr>

			<footer>
			<p>&copy; Company 2014</p>
			</footer>
		</div>

	</div>
	<!-- /container -->


	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>

</body>
</html>