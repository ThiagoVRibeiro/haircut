<%@page import="com.haircut.dao.FormaPagamentoDAO" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<jsp:useBean id="f" class="com.haircut.bean.FormaPagamento"></jsp:useBean>
<jsp:setProperty property="*" name="f"/>

<head>
<meta charset="UTF-8">
</head>

<%

	int i = FormaPagamentoDAO.salvarFormaPagamento(f);	


	if(i > 0){
		response.sendRedirect("FormaPagamentoAddSucesso.jsp");
	}else{
		response.sendRedirect("FormaPagamentoErro.jsp");
	}

%>