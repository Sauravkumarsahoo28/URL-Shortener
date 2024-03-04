<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
        /* Background and form container */
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #e9ecef;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        
        form {
            background-color: #000; /* Black background */
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            width: 300px;
            color: #fff; /* White text color */
        }

        /* Style for form elements */
        label {
            font-size: 16px;
            margin-bottom: 5px;
            display: block;
        }

        input[type=text], input[type=password] {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ced4da;
            border-radius: 5px;
            box-sizing: border-box;
            font-size: 16px;
            background-color: #333; /* Darker background for inputs */
            color: #fff; /* White text for inputs */
        }

        input[type=submit] {
            width: 100%;
            background-color: orange; /* Grey background */
            color: white;
            padding: 10px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 18px;
        }

        input[type=submit]:hover {
            background-color:orange; 
        }
    </style>
</head>
<body>

<form action="login" method="post" >
    <label for="email">Enter Email:</label><br>
    <input type="text" id="email" name="email"><br>
    <label for="password">Enter Password:</label><br>
    <input type="text" id="password" name="password"><br>
    <input type="submit" value="login">
</form>
 
</body>
</html>