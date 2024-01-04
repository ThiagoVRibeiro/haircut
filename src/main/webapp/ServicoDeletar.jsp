<%@page import="com.haircut.dao.servicoDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.haircut.bean.Servico"%>
    
<jsp:useBean id="s" class="com.haircut.bean.Servico"></jsp:useBean>
<jsp:setProperty property="*" name="s"/>

<%
	servicoDAO.deletarServico(s);
	response.sendRedirect("ServicoListar.jsp");
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