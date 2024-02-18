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
		import="com.haircut.dao.ClienteDAO, com.haircut.bean.*, java.util.*"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

	<div>
		<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
			<a class="navbar-brand nav-style" href="#">HairCut</a>
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
		<h1>Cadastrar Novo Cliente</h1>


		<form action="ClienteAdd.jsp" method="post">
			<div class="form-group">
				<label for="nome">Nome</label> <input type="text"
					class="form-control" id="nomeCliente" name="nome"
					placeholder="Seu nome">
			</div>
			<div class="form-group">
				<label for="telefone">Telefone</label> <input type="text"
					class="form-control" id="telefoneCliente" name="telefone"
					placeholder="Seu telefone">
			</div>

			<button type="submit" class="btn btn-primary">Enviar</button>
		</form>
	</div>
<br>
	<div class="registration-list">
		<%
		List<Cliente> list = ClienteDAO.getAllClientes();
		request.setAttribute("list", list);
		%>

		<table class="table">
			<thead>
				<tr>
					<th scope="col">ID</th>
					<th scope="col">Nome</th>
					<th scope="col">Telefone</th>
					<th scope="col"></th>
					<th scope="col"></th>
				</tr>
			</thead>
			<c:forEach items="${list}" var="cliente">
				<tbody>
					<tr>
						<td>${cliente.getId()}</td>
						<td>${cliente.getNome()}</td>
						<td>${cliente.getTelefone()}</td>
						<td><a href="ClienteFormEditar.jsp?id=${cliente.getId() }">Editar</a></td>
						<td><a href="ClienteFormDeletar.jsp?id=${cliente.getId() }">Excluir</a></td>
					</tr>
				</tbody>
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