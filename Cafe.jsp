<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"
	import="databaseconnection.DatabaseConnection"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	String customer_name = request.getParameter("name");
	String email = request.getParameter("email");
	int contact = Integer.parseInt(request.getParameter("number"));
	String book_table_time = request.getParameter("time");
	int how_many_guests = Integer.parseInt(request.getParameter("guests"));
	String book_table_msg = request.getParameter("send");

	new DatabaseConnection().saveData(customer_name, email, contact, book_table_time, how_many_guests);
	%>

	Hello
	<%
	out.print(customer_name);
	%>
	, your table has been booked, we will give your table number shortly to your mail id, Thank you !!!!!
</body>
</html>