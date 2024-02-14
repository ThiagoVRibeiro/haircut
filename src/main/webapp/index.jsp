<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HAIR CUT - Cabeleireiro Unissex</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" >
		<a class="navbar-brand" href="#">HairCut</a>
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

	<div id="carouselExampleIndicators" class="carousel slide"
		data-ride="carousel">
		<ol class="carousel-indicators">
			<li data-target="#carouselExampleIndicators" data-slide-to="0"
				class="active"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
		</ol>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="resources/img/maquinaCortarCabelo.jpeg" class="d-block w-100" alt="/resources/img/maquinaCortarCabelo.jpeg">
			</div>
			<div class="carousel-item">
				<img src="resources/img/tesouraCortarCabelo.png" class="d-block w-100" alt="/resources/img/tesouraCortarCabelo.png">
			</div>
			<div class="carousel-item">
				<img src="resources/img/suporteMaquinaCortarCabelo.jpeg" class="d-block w-100" alt="/resources/img/suporteMaquinaCortarCabelo.jpeg">
			</div>
		</div>
		<a class="carousel-control-prev" href="#carouselExampleIndicators"
			role="button" data-slide="prev"> <span
			class="carousel-control-prev-icon" aria-hidden="true"></span> <span
			class="sr-only">Previous</span>
		</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
			role="button" data-slide="next"> <span
			class="carousel-control-next-icon" aria-hidden="true"></span> <span
			class="sr-only">Next</span>
		</a>
	</div>

	<a href="ServicoAdicionar.jsp">Cadastrar Serviço</a>
	<a href="ServicoListar.jsp">Listar Serviço</a>
	</br>
	<a href="ClienteAdicionar.jsp">Cadastrar Cliente</a>
	<a href="ClienteListar.jsp">Listar Cliente</a>
	</br>
	<a href="FuncionarioAdicionar.jsp">Cadastrar Funcionario</a>
	<a href="FuncionarioListar.jsp">Listar Funcionario</a>
	</br>
	<a href="FormaPagamentoAdicionar.jsp">Cadastrar Forma de Pagamento</a>
	<a href="FormaPagamentoListar.jsp">Listar Forma de Pagamento</a>
	</br>
	<a href="RegistrarServico.jsp">Registrar serviço realizado</a>


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

