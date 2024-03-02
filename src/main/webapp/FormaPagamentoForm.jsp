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

		<h1>Cadastrar Nova Forma de Pagamento</h1>

		<form action="FormaPagamentoAdd.jsp" method="post">
			<div class="form-group">
				<label for="nome">Nome</label> <input type="text"
					class="form-control" id="nome" name="nome"
					placeholder="Nome da forma de pagamento">
			</div>

			<button type="submit" class="btn btn-primary">Enviar</button>
		</form>
	</div>

	<div class="registration-list">
		<%@ page
			import="com.haircut.dao.FormaPagamentoDAO, com.haircut.bean.*, java.util.*"%>
		<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="f"%>

		<%
		List<FormaPagamento> list = FormaPagamentoDAO.getAllFormaPagamentos();
		request.setAttribute("list", list);
		%>

		<table class="table">
			<thead>
				<tr>
					<th scope="col">ID</th>
					<th scope="col">Nome</th>
				</tr>
			</thead>
			<f:forEach items="${list}" var="formapagamento">
				<tr>
					<td>${formapagamento.getId()}</td>
					<td>${formapagamento.getNome()}</td>
					<td><a
						href="FormaPagamentoFormEditar.jsp?id=${formapagamento.getId() }">Editar</a></td>
					<td><a
						href="FormaPagamentoFormDeletar.jsp?id=${formapagamento.getId() }">Excluir</a></td>
				</tr>
			</f:forEach>
		</table>


	</div>
	
	<button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#confirm">Confirmação</button>

<div class="modal fade" id="confirm" role="dialog">
  <div class="modal-dialog modal-md">

    <div class="modal-content">
      <div class="modal-body">
            <p> QUER REALMENTE FAZER ISSO?? NÂO POR FAVOR, EU TENHO FILHOS</p>
      </div>
      <div class="modal-footer">
        <a href="wfefwe" type="button" class="btn btn-danger" id="delete">Apagar Registo</a>
            <button type="button" data-dismiss="modal" class="btn btn-default">Cancelar</button>
      </div>
    </div>

  </div>
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
