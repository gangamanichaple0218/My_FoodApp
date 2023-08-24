<%@page import="myfood_app.dto.Menu"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	Menu menu = (Menu) request.getAttribute("menu");
	%>
	<form action="saveorder" method="post">
		<table>
			<tr>
				<td>Name :</td>
				<td><input type="text" name="name" value=<%=menu.getName()%>
					readonly="readonly"></td>
			</tr>
			<tr>
				<td>Description :</td>
				<td><input type="text" name="description"
					value=<%=menu.getDescription()%> readonly="readonly"></td>
			</tr>
			<tr>
				<td>Price :</td>
				<td><input type="number" name="price"
					value=<%=menu.getPrice()%> readonly="readonly"></td>
			</tr>
			<tr>
				<td>Offer :</td>
				<td><input type="text" name="offer" value=<%=menu.getOffer()%>
					readonly="readonly"></td>
			</tr>
			<tr>
				<td>Quantity :</td>
				<td><input type="number" name="quantity"
					placeholder="Enter the quantity"></td>
			</tr>
			<tr>
				<td><input type="submit" value="Place Order"></td>
			</tr>
		</table>
	</form>

</body>
</html>