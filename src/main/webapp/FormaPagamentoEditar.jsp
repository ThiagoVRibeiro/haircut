<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.haircut.dao.FormaPagamentoDAO" %>
<jsp:useBean id="f" class="com.haircut.bean.FormaPagamento"></jsp:useBean>
<jsp:setProperty property="*" name="f"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Editar Forma de Pagamento</title>
</head>
<body>
	<%
		int i = FormaPagamentoDAO.updateFormaPagamento(f);
		response.sendRedirect("FormaPagamentoListar.jsp");
	%>
</body>
</html> 