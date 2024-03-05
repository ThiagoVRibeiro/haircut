<%@page import="com.haircut.dao.FuncionarioDAO" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<jsp:useBean id="f" class="com.haircut.bean.Funcionario"></jsp:useBean>
<jsp:setProperty property="*" name="f"/>

<head>
<meta charset="UTF-8">
</head>

<%
	int i = FuncionarioDAO.salvarFuncionario(f);

	if(i > 0){
		response.sendRedirect("FuncionarioAddSucesso.jsp");
	}else{
		response.sendRedirect("FuncionarioAddErro.jsp");
	}

%>