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


	<%@page import="com.haircut.bean.RegistrarServico, com.haircut.dao.RegistrarServicoDAO"%>
	<%@page import="com.haircut.bean.Cliente, com.haircut.dao.ClienteDAO"%>
	
	<%@page import="com.haircut.bean.Funcionario,com.haircut.dao.FuncionarioDAO"%>
	<%@page import="com.haircut.bean.Servico,com.haircut.dao.ServicoDAO"%>
	<%@page import="com.haircut.bean.FormaPagamento,com.haircut.dao.FormaPagamentoDAO"%>



	<%
		ClienteDAO clienteDAO = new ClienteDAO();
		List<Cliente>clientes=clienteDAO.getAllClientes();
		
		FuncionarioDAO funcionarioDAO = new FuncionarioDAO();
		List<Funcionario> listFuncionario = funcionarioDAO.getAllFuncionarios();
					
		ServicoDAO servicoDAO = new ServicoDAO();
		List<Servico> listServico = servicoDAO.getAllServicos();
						
		FormaPagamentoDAO formapagamentoDAO = new FormaPagamentoDAO();
		List<FormaPagamento> listFormaPagamento = formapagamentoDAO.getAllFormaPagamentos();
	%>

	<form action="RegistrarServicoAdd.jsp" method="post">

		<table>
			<!-- Cliente -->
			<tr>
				<td>Cliente:</td>
				<td><select name="valores">
						<option>Selecione</option>
						<%
						
						for(Cliente cliente:clientes){
						%>
						<option value="<%=cliente.getId() %>"><%=cliente.getNome() %></option>
						<%
						//System.out.println(cliente.getNome());
						} %>
				</select></td>
			</tr>
			<!-- Funcionario -->
			<tr>
				<td>Funcionario:  </td>
				<td>				
					<select name="valores">
						<option>Selecione</option>
						 <%
						
						for(Funcionario funcionario:listFuncionario){
						%>
						<option value="<%=funcionario.getId()%>"><%=funcionario.getNome() %></option>
						<%
						//System.out.println(formaPagamento.getId());
						} %>
						</select>
						
				</td>
			</tr>
			<!-- Servico realizado -->
			<tr>
				<td>Serviço Realizado:</td>
				<td><select name="valores">
						<option>Selecione</option>
						<%
						
						for(Servico servico:listServico){
						%>
						<option name="serv" value="<%=servico.getId()%>"><%=servico.getNomeServico() %></option>
						<%
						//System.out.println(servico.getId());
						} %>
				
				</select></td>
			</tr>
			
			<td value="serv"></td>
			<!-- Forma de pagamento -->
			<tr>
				<td>Forma de Pagamento:</td>
				<td><select name="valores">
						<option>Selecione</option>
						<%
						
						for(FormaPagamento formaPagamento:listFormaPagamento){
						%>
						<option value="<%=formaPagamento.getId()%>"><%=formaPagamento.getNome() %></option>
						<%
						//System.out.println(formaPagamento.getId());
						} %>
				</select></td>
			</tr>
			
			<tr>
				<td colspan="2"><input type="submit" value="Registrar Serviço" />
				</td>
			</tr>
		</table>
	</form>
</body>
</html>
