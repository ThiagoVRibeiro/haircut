<%@page import="com.haircut.dao.RegistrarServicoDAO" %>
<jsp:useBean id="r" class="com.haircut.bean.RegistrarServico"></jsp:useBean>
<jsp:setProperty property="*" name="r"/>


<%@page import="com.haircut.dao.ClienteDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.haircut.bean.Cliente"%>
    
<jsp:useBean id="c" class="com.haircut.bean.Cliente"></jsp:useBean>
<jsp:setProperty property="*" name="c"/>

<head>
<meta charset="UTF-8">
</head>

<%
	System.out.println("ADD" + c);



	int i = RegistrarServicoDAO.salvarRegistrarServico(c);	


	if(i > 0){
		response.sendRedirect("RegistrarServicoAddSucesso.jsp");
	}else{
		response.sendRedirect("RegistrarServicoAddErro.jsp");
	}

%>