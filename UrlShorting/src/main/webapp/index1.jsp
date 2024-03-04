<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
    <style>
        /* General body styling */
        body, html {
            height: 100%;
            margin: 0;
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            background-color: #f0f2f5;
        }

        /* Navbar styles */
        .navbar {
            position: fixed;
            top: 0;
            width: 100%;
            background-color: #333;
            overflow: hidden;
            z-index: 1000;
            height: 79px;
            display: flex; /* Add flexbox display */
            justify-content: space-between; /* Align items horizontally with space between */
            align-items: center; /* Align items vertically */
            padding: 0 20px; /* Add padding for spacing */
        }

        .navbar a {
            float: left;
            display: block;
            color: white;
            text-align: center;
            padding: 14px 20px;
            text-decoration: none;
        }

        .navbar a:hover {
            background-color: orange;
            color: white;
        }

        /* Navbar logo specific styles */
        .navbar .logo img {
            height: 50px; /* Adjust the height as needed */
            width: auto; /* Maintain aspect ratio */
        }

        .navbar .cta {
            float: right;
        }

        /* Form container styles */
        .container {
            width: 100%;
            max-width: 1200px; /* Limit the maximum width */
            display: flex; /* Use flexbox */
            justify-content: space-between; /* Space evenly between form and image */
            align-items: flex-start; /* Align items to the top */
            margin-top: 100px; /* Added margin-top to push the container below the navbar */
        }

        .container .form-container {
            flex: 0 0 48%; /* Set the width of the form */
        }

        .container img {
            flex: 0 0 48%; /* Set the width of the image */
            max-height: 400px; /* Limit the maximum height of the image */
            object-fit: contain; /* Maintain aspect ratio */
            margin-left: 20px; /* Add some space between form and image */
        }

        .form-group {
            margin-bottom: 20px;
        }

        label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }

        input[type="text"],
        input[type="submit"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            border-radius: 4px;
            box-sizing: border-box;
        }

        input[type="text"] {
            border: 1px solid #ccc;
        }

        input[type="submit"] {
            border: none;
            background-color: #007bff;
            color: white;
            cursor: pointer;
            font-size: 16px;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>

<!-- Navbar HTML -->
<div class="navbar">
    <a href="" class="logo"><img src="xyz/images/logo.png" alt="Bitly Logo"></a>
    <a href="#">Products</a>
    <a href="#">Solutions</a>
    <a href="#">Pricing</a>
    <a href="#">Resources</a>
    <div class="cta">
        <a href="login.jsp">Log in</a>
        <a href="adduser">Sign up Free</a>
    </div>
</div>

<!-- Container for the form and image -->
    <!-- Image -->
    <img alt="urlshortner" src="xyz/images/img1.webp">

</body>
</html>