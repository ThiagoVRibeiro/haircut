<%@page import="com.haircut.dao.ClienteDAO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:useBean id="s" class="com.haircut.bean.Cliente"></jsp:useBean>
<jsp:setProperty property="*" name="s"/>

<head>
<meta charset="UTF-8">
</head>

<%
	
	int i = ClienteDAO.salvarCliente(s);

	if(i > 0){
		response.sendRedirect("ClienteAddSucesso.jsp");
	}else{
		response.sendRedirect("ClienteAddErro.jsp");
	}

%>