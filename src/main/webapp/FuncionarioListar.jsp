<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Visualização de Funcionários</title>
</head>
<body>
	<%@ page import="com.haircut.dao.FuncionarioDAO, com.haircut.bean.*, java.util.*" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="f" %>
	
	<h1>Listagem de Funcionarios</h1>


	<%
		List<Funcionario> list = FuncionarioDAO.getAllFuncionarios();
		request.setAttribute("list", list);
	%>
	
	<table border="1">
		<tr>
			<th>ID</th>
			<th>Nome</th>
			<th>Funcao</th>
			<th>Email</th>
			<th>Endereco</th>
			<th>Telefone</th>
		</tr>
		
		<c:forEach items="${list}" var="funcionario">
			<tr>
				<td>${funcionario.getId()}</td>
				<td>${funcionario.getNome()}</td>
				<td>${funcionario.getFuncao()}</td>
				<td>${funcionario.getEmail()}</td>
				<td>${funcionario.getEndereco()}</td>
				<td>${funcionario.getTelefone()}</td>
				<td><a href="FuncionarioFormEditar.jsp?id=${funcionario.getId() }">Editar</a></td>
				<td><a href="FuncionarioFormDeletar.jsp?id=${funcionario.getId() }">Excluir</a></td>
			</tr>
		</c:forEach>
	</table>
	
</body>
</html>