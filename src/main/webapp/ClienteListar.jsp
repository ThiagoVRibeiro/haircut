<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Visualização de Clientes</title>
</head>
<body>
	<%@ page import="com.haircut.dao.ClienteDAO, com.haircut.bean.*, java.util.*" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	
	<h1>Listagem de Clientes</h1>


	<%
		List<Cliente> list = ClienteDAO.getAllClientes();
		request.setAttribute("list", list);
	%>
	
	<table border="1">
		<tr>
			<th>ID</th>
			<th>Nome</th>
			<th>Telefone</th>
		</tr>
		
		<c:forEach items="${list}" var="cliente">
			<tr>
				<td>${cliente.getId()}</td>
				<td>${cliente.getNome()}</td>
				<td>${cliente.getTelefone()}</td>
				<td><a href="ClienteFormEditar.jsp?id=${cliente.getId() }">Editar</a></td>
				<td><a href="ClienteFormDeletar.jsp?id=${cliente.getId() }">Excluir</a></td>
			</tr>
		</c:forEach>
	</table>
	
</body>
</html>