<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
 <style>
        
        body {
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-color: #f0f0f0;
        }
        form {
            background-color: #000;
            padding: 40px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            color: #fff;
            font-size: 18px;
            height: 300px;
            width: 400px;
        }
        input[type="text"], input[type="password"] {
            width: 100%;
            padding: 10px;
            margin: 8px 0;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 4px;
            background-color: #333;
            color: #fff;
        }
        input[type="submit"] {
            width: 100%;
            padding: 10px;
            margin-top: 8px;
            box-sizing: border-box;
            background-color: #333;
            color: #fff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #555;
        }
    </style>
</head>
<body>


<form:form action="userinfo" modelAttribute="userobj">
 	Enter UserName:<form:input path="username"/>
 	Enter email :<form:input path="email"/>
 	Enter Password :<form:input path="Password"/>
 	<input type="submit">
</form:form>
</body>
</html>