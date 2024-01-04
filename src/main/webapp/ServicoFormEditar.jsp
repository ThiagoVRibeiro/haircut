<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EditarServico</title>
</head>
<body>
	<%@page import="com.haircut.bean.Servico, com.haircut.dao.servicoDAO" %>
	
	<%
		String id = request.getParameter("id");
		Servico servico = servicoDAO.getRegistroServicoById(Integer.parseInt(id));
	%>
	
	<h1>Editar tipos de serviços cadastrados</h1>
	
	<form action="ServicoEditar.jsp" method="post">
		<table>
			<tr>
				<td>Serviço: </td>
				<td><input type="text" name="nomeServico" value="<%=servico.getNomeServico() %>" /></td>
			</tr>
			<tr>
				<td>Descrição: </td>
				<td><input type="text" name="descricaoServico" value="<%=servico.getDescricaoServico() %>"/></td>
			</tr>
			<tr>
				<td>Valor: </td>
				<td><input type="number" name="valorServico" value="<%=servico.getValorServico() %>" /></td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="Editar Serviço" />
				</td>
			</tr>
		</table>
	</form>
	
</body>
</html>