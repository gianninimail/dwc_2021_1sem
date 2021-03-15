<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="model.Pessoa" %>
<%@page import="java.util.List" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Listar Pessoas do BD</title>
</head>
<body>
	<div align="center">
		<table border="1">
			<tr>
				<th>CPF</th>
				<th>Nome</th>
				<th>Cel</th>
				<th>E-mail</th>
			</tr>
			
			<%
			
				List<Pessoa> pessoas = (List<Pessoa>)request.getAttribute("lista");
			
				for (Pessoa item : pessoas) {
			
			%>
			<tr>
				<td><%=item.getCpf()%></td>
				<td><%=item.getNome()%></td>
				<td><%=item.getCel()%></td>
				<td><%=item.getEmail()%></td>
			</tr>
			<%
				}
			%>
		</table>
		<a href="index.jsp">Home</a>
	</div>
</body>
</html>