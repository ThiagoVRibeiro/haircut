<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Editar Cliente</title>
</head>
<body>
	
	
	<h1>Editar clientes cadastrados</h1>
	
	<%@page import="com.haircut.bean.Cliente, com.haircut.dao.ClienteDAO" %>
	
	<%
		String id = request.getParameter("id");
		Cliente cliente = ClienteDAO.getRegistroClienteById(Integer.parseInt(id));
	%>
	
	<form action="ClienteEditar.jsp" method="post">
		<input type="hidden" name="id" value="<%=cliente.getId()%>">
		<table>
		<tr>
				<td>ID: </td>
				<td><input type="text" name="id" value="<%=cliente.getId() %>"/></td>
			</tr>
			<tr>
				<td>Cliente: </td>
				<td><input type="text" name="nome" value="<%=cliente.getNome() %>"/></td>
			</tr>
			<tr>
				<td>Telefone: </td>
				<td><input type="text" name="telefone" value="<%=cliente.getTelefone() %>"/></td>
			</tr>
			
			<tr>
				<td colspan="2">
					<input type="submit" value="Editar Cliente" />
				</td>
			</tr>
		</table>
	</form>
	
</body>
</html>