<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.haircut.dao.ClienteDAO" %>
<jsp:useBean id="c" class="com.haircut.bean.Cliente"></jsp:useBean>
<jsp:setProperty property="*" name="c"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Editar Cliente</title>
</head>
<body>
	<%
		int i = ClienteDAO.updateCliente(c);
		response.sendRedirect("ClienteListar.jsp");
	%>
</body>
</html> 