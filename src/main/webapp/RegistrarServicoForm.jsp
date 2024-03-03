<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="resources/css/Style.css" />
</head>
<body>
	<div>
		<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
			<a class="navbar-brand nav-style" href="index.jsp">HairCut</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav mr-auto">

					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
						role="button" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false"> Controle de Cadastros </a>
						<div class="dropdown-menu" aria-labelledby="navbarDropdown">
							<a class="dropdown-item" href="FuncionarioAdicionar.jsp">Cadastrar
								Funcionário</a> <a class="dropdown-item" href="ClienteAdicionar.jsp">Cadastrar
								Cliente</a> <a class="dropdown-item" href="ServicoAdicionar.jsp">Cadastrar
								Serviço</a> <a class="dropdown-item"
								href="FormaPagamentoAdicionar.jsp">Cadastrar Forma de
								Pagamento</a>
						</div></li>
					<li class="nav-item active"><a class="nav-link"
						href="RegistrarServico.jsp">Registrar Serviço</a></li>
					<li class="nav-item active"><a class="nav-link" href="#">Sobre</a>
					</li>
				</ul>
			</div>
		</nav>
	</div>

	<div class="registration-form">
		<h1>Registrar Serviço Realizado</h1>


		<%@page
			import="com.haircut.bean.RegistrarServico, com.haircut.dao.RegistrarServicoDAO"%>
		<%@page import="com.haircut.bean.Cliente, com.haircut.dao.ClienteDAO"%>

		<%@page
			import="com.haircut.bean.Funcionario,com.haircut.dao.FuncionarioDAO"%>
		<%@page import="com.haircut.bean.Servico,com.haircut.dao.ServicoDAO"%>
		<%@page
			import="com.haircut.bean.FormaPagamento,com.haircut.dao.FormaPagamentoDAO"%>



		<%
		ClienteDAO clienteDAO = new ClienteDAO();
		List<Cliente> clientes = clienteDAO.getAllClientes();

		FuncionarioDAO funcionarioDAO = new FuncionarioDAO();
		List<Funcionario> listFuncionario = funcionarioDAO.getAllFuncionarios();

		ServicoDAO servicoDAO = new ServicoDAO();
		List<Servico> listServico = servicoDAO.getAllServicos();

		FormaPagamentoDAO formapagamentoDAO = new FormaPagamentoDAO();
		List<FormaPagamento> listFormaPagamento = formapagamentoDAO.getAllFormaPagamentos();
		%>

		<form action="RegistrarServicoAdd.jsp" method="post">

			<div class="form-inline selects-registrar-servico">
				<label class="my-1 mr-2" for="servico">Cliente</label> <select
					name="valores" class="custom-select my-1 mr-sm-2"
					id="select-cliente" data-width="500px">
					<option>Selecione</option>
					<%
					for (Cliente cliente : clientes) {
					%>
					<option value="<%=cliente.getId()%>"><%=cliente.getNome()%></option>
					<%
					}
					%>
				</select>
			</div>

			<div class="form-inline selects-registrar-servico">
				<label class="my-1 mr-2" for="servico">Funcionário</label> <select
					name="valores" class="custom-select my-1 mr-sm-2"
					id="select-funcionario" data-width="500px">
					<option>Selecione</option>
					<%
					for (Funcionario funcionario : listFuncionario) {
					%>
					<option value="<%=funcionario.getId()%>"><%=funcionario.getNome()%></option>
					<%
					}
					%>
				</select>
			</div>

			<div class="form-inline selects-registrar-servico">
				<label class="my-1 mr-2" for="servico">Serviço Realizado</label> <select
					name="valores" class="custom-select my-1 mr-sm-2"
					id="select-servico" data-width="500px">
					<option>Selecione</option>
					<%
					for (Servico servico : listServico) {
					%>
					<option name="serv" value="<%=servico.getId()%>"><%=servico.getNomeServico()%></option>
					<%
					}
					%>
				</select>
			</div>

			<div class="form-inline selects-registrar-servico">
				<label class="my-1 mr-2" for="servico">Forma de Pagamento</label> <select
					name="valores" class="custom-select my-1 mr-sm-2"
					id="select-pagamento" data-width="500px">
					<option>Selecione</option>
					<%
					for (FormaPagamento formaPagamento : listFormaPagamento) {
					%>
					<option value="<%=formaPagamento.getId()%>"><%=formaPagamento.getNome()%></option>
					<%
					}
					%>
				</select>
			</div>
			<div class="selects-registrar-servico">
			<tr>
				<td>Observação:</td>
				<td ><input id="select-observacao" type="text" name="valores" /></td><br>
			</tr>

			<tr>
				<td colspan="2"><input class="selects-registrar-servico btn-registrar-servico btn btn-primary" type="submit" value="Registrar Serviço" />
				</td>
			</tr>
			</div>
			</table>
		</form>
	</div>

	<script src='http://code.jquery.com/jquery-2.1.3.min.js'></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<script>
		$(function() {
			$('.dropdown-toggle').dropdown();
		});
	</script>
</body>
</html>
