<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.haircut.dao.FuncionarioDAO" %>
<jsp:useBean id="f" class="com.haircut.bean.Funcionario"></jsp:useBean>
<jsp:setProperty property="*" name="f"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Editar Funcionario</title>
</head>
<body>
	<%
		int i = FuncionarioDAO.updateFuncionario(f);
		response.sendRedirect("FuncionarioListar.jsp");
	%>
</body>
</html> 