<%@page import="com.entities.Url"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
  table {
    width: 100%;
    border-collapse: collapse;
  }
  th, td {
    border: 1px solid #dddddd;
    padding: 8px;
    text-align: left;
  }
  th {
    background-color: #f2f2f2;
  }
  tr:nth-child(even) {
    background-color: #f2f2f2;
  }
</style>
</head>
<body>
<% List <Url> urls =(List<Url>) request.getAttribute("urllist"); %>

<table>
	<th>Actual Url</th>
	<th>Short Url</th>
	<th>Visits</th>
<% for(Url u :urls) {%>
<tr>
<td><%=u.getActualurl() %></td>
<td><%=u.getShorterurl() %></td>
<td><%= u.getVisits() %></td>
</tr>
<%} %>
</table>
</body>
</html>