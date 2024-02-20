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
</head>
<body>

	<%@ page import="com.haircut.dao.ServicoDAO,com.haircut.bean.*,java.util.*" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

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
		<h1>Cadastrar Novo Serviço</h1>

		<form action="ServicoAdd.jsp" method="post">
			<div class="form-group">
				<label for="servico">Serviço</label> <input type="text"
					class="form-control" id="nomeServico" name="nomeServico"
					placeholder="Nome do serviço">
			</div>
			<div class="form-group">
				<label for="descricao">Descrição</label> <input type="text"
					class="form-control" id="descricaoServico" name="descricaoServico"
					placeholder="Descrição breve do serviço">
			</div>
			<div class="form-group">
				<label for="valor">Valor</label> <input type="number"
					class="form-control" id="valorServico" name="valorServico"
					placeholder="Descrição breve do serviço">
			</div>

			<button type="submit" class="btn btn-primary">Enviar</button>
		</form>
	</div>
	<br>

	<div class="registration-list">
	
	
	<%
			List<Servico> list = ServicoDAO.getAllServicos();
			request.setAttribute("list", list);
	%>		
		<table class="table">
			<thead>
				<tr>
					<th scope="col">ID</th>
					<th scope="col">Nome</th>
					<th scope="col">Descrição</th>
					<th scope="col">Valor</th>
					<th scope="col"></th>
					<th scope="col"></th>
				</tr>
			</thead>
			<c:forEach items="${list}" var="servico">
				<tbody>
					<tr>
						<td>${servico.getId()}</td>
						<td>${servico.getNomeServico()}</td>
						<td>${servico.getDescricaoServico()}</td>
						<td>${servico.getValorServico()}</td>
						<td><a href="ServicoFormEditar.jsp?id=${servico.getId() }">Editar</a></td>
						<td><a href="ServicoDeletar.jsp?id=${servico.getId() }">Excluir</a></td>
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
