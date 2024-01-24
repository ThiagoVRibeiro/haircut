<%@page import="com.haircut.dao.ServicoDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.haircut.bean.Servico"%>
    
<jsp:useBean id="o" class="w com.haircut.bean.Servi"></jsp:useBean>
<jsp:setProperty property="*" name="s"/>

<%
p

	ServicoDAO.deletarServico(s);
	response.sendRedirect("ServicoListar.jsp")
%>

<!--  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>-->