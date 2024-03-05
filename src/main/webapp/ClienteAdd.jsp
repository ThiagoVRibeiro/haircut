<%@page import="com.haircut.dao.ClienteDAO" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<jsp:useBean id="s" class="com.haircut.bean.Cliente"></jsp:useBean>
<jsp:setProperty property="*" name="s"/>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
</head>

<%
	System.out.println("ClienteADD: " + s.getNome());
	int i = ClienteDAO.salvarCliente(s);

	if(i > 0){
		response.sendRedirect("ClienteAddSucesso.jsp");
	}else{
		response.sendRedirect("ClienteAddErro.jsp");
	}

%>