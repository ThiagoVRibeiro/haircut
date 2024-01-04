<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Visualiza��o de servi�os</title>
</head>
<body>
	<%@ page import="com.haircut.dao.servicoDAO, com.haircut.bean.*, java.util.*" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	
	<h1>Listagem de Servi�os</h1>


	<%
		List<Servico> list = servicoDAO.getAllServicos();
		request.setAttribute("list", list);
	%>
	
	<table border="1">
		<tr>
			<th>ID</th>
			<th>NomeServi�o</th>
			<th>Descri��oServico</th>
			<th>ValorServi�o</th>
		</tr>
		
		<c:forEach items="${list}" var="servico">
			<tr>
				<td>${servico.getId()}</td>
				<td>${servico.getNomeServico()}</td>
				<td>${servico.getDescricaoServico()}</td>
				<td>${servico.getValorServico()}</td>
				<td><a href="ServicoFormEditar.jsp?id=${servico.getId() }">Editar</a></td>
				<td><a href="ServicoDeletar.jsp?id=${servico.getId() }">Excluir</a></td>
			</tr>
		</c:forEach>
	</table>
	
</body>
</html>