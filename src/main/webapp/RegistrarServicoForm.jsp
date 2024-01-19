<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
</head>
<body>
	<h1>Registrar Serviço Realizado</h1>
	
	
	<%@page import="com.haircut.bean.RegistrarServico, com.haircut.dao.RegistrarServicoDAO" %>
	<%@page import="com.haircut.bean.Cliente, com.haircut.dao.ClienteDAO" %>
		
		

	<%
		ClienteDAO clienteDAO = new ClienteDAO();
		List<Cliente>clientes=clienteDAO.getAllClientes();
	%>

	<form action="RegistrarServicoAdd.jsp" method="post">

		<table>
			<tr>
				<td>Cliente: </td>
				<td>				
					<select name="id">
						<option>Selecione</option>
						 <%
						
						for(Cliente cliente:clientes){
						%>
						<option value="<%=cliente.getId() %>"><%=cliente.getNome() %></option>
						<%
						System.out.println(cliente.getNome());
						} %>
						</select>
						
					</select>
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
					<input type="submit" value="Registrar Serviço" />
				</td>
			</tr>
		</table>
	</form>
	</body>
</html>	