<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.haircut.dao.servicoDAO" %>
<jsp:useBean id="s" class="com.haircut.bean.Servico"></jsp:useBean>
<jsp:setProperty property="*" name="s"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		int i = servicoDAO.updateServico(s);
		response.sendRedirect("listarServico.jsp");
	%>
</body>
</html> 