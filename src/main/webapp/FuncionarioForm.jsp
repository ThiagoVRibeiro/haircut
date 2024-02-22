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
	<%@ page
		import="com.haircut.dao.FuncionarioDAO, com.haircut.bean.*, java.util.*"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="f"%>

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
		<h1>Cadastrar Novo Funcionario</h1>


		<form action="FuncionarioAdd.jsp" method="post">
			<div class="form-group">
				<label for="nome">Nome</label> <input type="text"
					class="form-control" id="nomeFuncionario" name="nome"
					placeholder="Nome do funcionário">
			</div>
			<div class="form-group">
				<label for="funcao">Função</label> <input type="text"
					class="form-control" id="funcaoFuncionario" name="funcao"
					placeholder="Função do funcionário">
			</div>
			<div class="form-group">
				<label for="email">Email</label> <input type="text"
					class="form-control" id="emailFuncionario" name="email"
					placeholder="Email do funcionário">
			</div>
			<div class="form-group">
				<label for="endereco">Endereço</label> <input type="text"
					class="form-control" id="enderecoFuncionario" name="endereco"
					placeholder="Endereço do funcionário">
			</div>
			<div class="form-group">
				<label for="telefone">Telefone</label> <input type="text"
					class="form-control" id="telefoneFuncionario" name="telefone"
					placeholder="Seu telefone">
			</div>

			<button type="submit" class="btn btn-primary">Enviar</button>
		</form>
	</div>

	<div class="registration-list">
		<%
		List<Funcionario> list = FuncionarioDAO.getAllFuncionarios();
		request.setAttribute("list", list);
		%>

		<table class="table">
		<thead>
			<tr>
				<th scope="col">ID</th>
				<th scope="col">Nome</th>
				<th scope="col">Funcao</th>
				<th scope="col">Email</th>
				<th scope="col">Endereco</th>
				<th scope="col">Telefone</th>
				<th scope="col"></th>
				<th scope="col"></th>
			</tr>
</thead>
			<c:forEach items="${list}" var="funcionario">
				<tr>
					<td>${funcionario.getId()}</td>
					<td>${funcionario.getNome()}</td>
					<td>${funcionario.getFuncao()}</td>
					<td>${funcionario.getEmail()}</td>
					<td>${funcionario.getEndereco()}</td>
					<td>${funcionario.getTelefone()}</td>
					<td><a
						href="FuncionarioFormEditar.jsp?id=${funcionario.getId() }">Editar</a></td>
					<td><a
						href="FuncionarioFormDeletar.jsp?id=${funcionario.getId() }">Excluir</a></td>
				</tr>
			</c:forEach>
		</table>
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
