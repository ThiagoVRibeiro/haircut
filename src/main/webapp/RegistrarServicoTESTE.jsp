<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
</head>
<body>
	<h1>PAGINA JSP PRA RECEBER O PARAMETRO</h1>
	
	
	<%@page import="com.haircut.bean.RegistrarServico, com.haircut.dao.RegistrarServicoDAO" %>
	<%@page import="com.haircut.bean.Cliente, com.haircut.dao.ClienteDAO" %>
		
		

	<%
		String id = request.getParameter("id");
		Cliente clientes = ClienteDAO.getRegistroClienteById(Integer.parseInt(id));
	%>

	<form action="RegistrarServicoAdd.jsp" method="post">
		<input type="hidden" name="id" value="<%=clientes.getId()%>">
		<table>
			<tr>
				<td>Cliente: </td>
				<td>				
					<%System.out.print(clientes.getId()); %>
				</td>
			</tr>
			<!-- <tr>
				<td>Cabeleireiro: </td>
				<td><input type="text" name="id_funcionario" /></td>
			</tr>
			<tr>
				<td>Serviço Realizado: </td>
				<td><input type="text" name="id_servico" /></td>
			</tr>
			<tr>
				<td>Valor: </td>
			</tr>
			<tr>
				<td>Observação: </td>
				<td><input type="text" name="observacao" /></td>
			</tr>
			<tr>
				<td>Forma de pagamento: </td>
				<td><input type="text" name="observacao" /></td>
			</tr> -->
			<tr>
				<td colspan="2">
					<a href="RegistrarServicoForm.jsp?id=${cliente.getId() }">Editar</a>
					<input type="submit" value="Registrar Serviço" />
				</td>
			</tr>
			<tr>
			<%
				String nome = request.getParameter("id");
				out.print("Olá" + nome);
			%>
			</tr>
		</table>
	</form>
	</body>
</html>	