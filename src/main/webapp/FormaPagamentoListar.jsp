<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Visualização de Formas de Pagamentos</title>
</head>
<body>
	<%@ page import="com.haircut.dao.FormaPagamentoDAO, com.haircut.bean.*, java.util.*" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="f" %>
	
	<h1>Listagem de Formas de Pagamentos</h1>


	<%
		List<FormaPagamento> list = FormaPagamentoDAO.getAllFormaPagamentos();
		request.setAttribute("list", list);
	%>
	
	<table border="1">
		<tr>
			<th>ID</th>
			<th>Nome</th>
		</tr>
		
		<f:forEach items="${list}" var="formapagamento">
			<tr>
				<td>${formapagamento.getId()}</td>
				<td>${formapagamento.getNome()}</td>
				<td><a href="FormaPagamentoFormEditar.jsp?id=${formapagamento.getId() }">Editar</a></td>
				<td><a href="FormaPagamentoFormDeletar.jsp?id=${formapagamento.getId() }">Excluir</a></td>
			</tr>
		</f:forEach>
	</table>
	
</body>
</html>