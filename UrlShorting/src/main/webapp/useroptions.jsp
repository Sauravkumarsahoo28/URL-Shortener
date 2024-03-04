<%@page import="com.entities.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #000; /* Change background color to black */
	color: #fff; /* Change text color to white */
	margin: 0;
	padding: 0;
}

.container {
	max-width: 600px;
	margin: 20px auto;
	padding: 20px;
	background-color: #fff; /* Change form background color to white */
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

.form-container {
	margin: 20px 0;
}

h2 {
	color: #ffa500; /* Change heading color to orange */
}

p {
	font-size: 16px;
	color: #ccc; /* Change paragraph text color to light gray */
}

.form-group {
	margin-bottom: 15px;
}

label {
	display: block;
	margin-bottom: 5px;
	color: #fff; /* Change label text color to white */
}

input[type="text"] {
	width: 100%;
	padding: 10px;
	margin: 5px 0 20px 0;
	display: inline-block;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
	background-color: #fff; /* Ensure input background color is white */
	color: #333; /* Change input text color to dark gray */
}

input[type="submit"] {
	width: 100%;
	background-color: #ffa500;
	/* Change submit button background color to orange */
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}

input[type="submit"]:hover {
	background-color: #ff8c00; /* Darken button color on hover */
}
</style>
</head>
<body>
	<%
	User u = (User) session.getAttribute("userinfo");
	if (u != null) {
	%>
	<div class="container">
		<!-- Form container -->
		<div class="form-container">
			<h2>Great connections start with a click</h2>
			<p>Sign up for a free account and put Bitly to work</p>
			<form action="changeurl" id="urlchange">
				<div class="form-group">
					<label for="long-url">Paste a long URL</label> <input type="text"
						id="long-url" name="long-url"
						placeholder="Example: http://super-long-link.com/shorten-it">
				</div>
				<div class="form-group">
					<label for="back-half">Enter a back-half (optional)</label> <input
						type="text" id="back-half" name="back-half"
						placeholder="example: favorite-link" value=${shorturl }>
				</div>
				<input type="submit" value="Generate Short URL">
			</form>
		</div>
		<%
		} else {
		%>
		<a href="login.jsp"><h1>Login First</h1></a>
		<%
		}
		%>
		
		<button style="background-color: orange; color: white; padding: 10px 20px; text-decoration: none; border-radius: 5px;"><a href="fetchdata">show history</a></button>
	
</body>
</html>