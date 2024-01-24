<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.haircut.dao.ServicoDAO" %>
<jsp:useBean id="o" class="w com.haircut.bean.Servi"></jsp:useBean>
<jsp:setProperty property="*" name="s"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	p

			int i = ServicoDAO.updateServico(s);
			response.sendRedirect("ServicoListar.jsp");
	%>
</body>
</html> 