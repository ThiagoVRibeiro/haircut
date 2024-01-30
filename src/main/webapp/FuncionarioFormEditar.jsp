<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Editar Funcionario</title>
</head>
<body>
	
	
	<h1>Editar funcionarios cadastrados</h1>
	
	<%@page import="com.haircut.bean.Funcionario, com.haircut.dao.FuncionarioDAO" %>
	
	<%
		String id = request.getParameter("id");
		Funcionario funcionario = FuncionarioDAO.getRegistroFuncionarioById(Integer.parseInt(id));
	%>
	
	<form action="FuncionarioEditar.jsp" method="post">
		<input type="hidden" name="id" value="<%=funcionario.getId()%>">
		<table>
		<tr>
				<td>ID: </td>
				<td><input type="text" name="id" value="<%=funcionario.getId() %>"/></td>
			</tr>
			<tr>
				<td>Funcionario: </td>
				<td><input type="text" name="nome" value="<%=funcionario.getNome() %>"/></td>
			</tr>
			<tr>
				<td>Funcao: </td>
				<td><input type="text" name="funcao" value="<%=funcionario.getFuncao() %>"/></td>
			</tr>
			<tr>
				<td>Email: </td>
				<td><input type="text" name="email" value="<%=funcionario.getEmail() %>"/></td>
			</tr>
			<tr>
				<td>Endereco: </td>
				<td><input type="text" name="endereco" value="<%=funcionario.getEndereco() %>"/></td>
			</tr>
			
			<tr>
				<td colspan="2">
					<input type="submit" value="Editar Funcionario" />
				</td>
			</tr>
		</table>
	</form>
	
</body>
</html>