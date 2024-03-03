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
<title>EditarServico</title>
</head>
<body>
	<%@page import="com.haircut.bean.Servico, com.haircut.dao.ServicoDAO"%>

	<%
	String id = request.getParameter("id");
	Servico servico = ServicoDAO.getRegistroServicoById(Integer.parseInt(id));
	%>

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

	<br>
	<div class="registration-list-edit">
		<h1>Editar Serviço</h1>
		<form action="ServicoEditar.jsp" method="post">
			<input type="hidden" name="id" value="<%=servico.getId()%>">
			<table class="table">
				<thead>
					<tr>
						<th scope="col">Nome Serviço</th>
						<th scope="col">Descrição Serviço</th>
						<th scope="col">Valor Serviço</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><input type="text" name="nomeServico"
							value="<%=servico.getNomeServico()%>" /></td>
						<td><input type="text" name="descricaoServico"
							value="<%=servico.getDescricaoServico()%>" /></td>
						<td><input type="number" name="valorServico"
							value="<%=servico.getValorServico()%>" /></td>
					</tr>
					<tr>
						<td>
							<button type="submit" class="btn btn-primary">Enviar</button>
						</td>
					</tr>
				</tbody>
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