<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Editar Forma de Pagamento</title>
</head>
<body>
	<%@page import="com.haircut.bean.FormaPagamento, com.haircut.dao.FormaPagamentoDAO" %>
	
	<%
		String id = request.getParameter("id");
		FormaPagamento formaPagamento = FormaPagamentoDAO.getRegistroFormaPagamentoById(Integer.parseInt(id));
	%>
	
	<h1>Editar Formas de Pagamentos Cadastrados</h1>
	
	<form action="FormaPagamentoEditar.jsp" method="post">
		<input type="hidden" name="id" value="<%=formaPagamento.getId()%>">
		<table>
			<tr>
				<td>Forma de pagamento: </td>
				<td><input type="text" name="nome" value="<%=formaPagamento.getNome() %>"/></td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="Editar Forma de Pagamento" />
				</td>
			</tr>
		</table>
	</form>
	
</body>
</html>