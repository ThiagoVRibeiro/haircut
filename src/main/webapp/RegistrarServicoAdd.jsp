<%@page import="com.haircut.dao.RegistrarServicoDAO" %>
<jsp:useBean id="r" class="com.haircut.bean.RegistrarServico"></jsp:useBean>
<jsp:setProperty property="*" name="r"/>


<%@page import="com.haircut.dao.ClienteDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.haircut.bean.*"%>
    
<jsp:useBean id="c" class="com.haircut.bean.Cliente"></jsp:useBean>
<jsp:setProperty property="*" name="c"/>

<%@page import="com.haircut.dao.FormaPagamentoDAO" %>
	
<jsp:useBean id="fp" class="com.haircut.bean.FormaPagamento"></jsp:useBean>
<jsp:setProperty property="*" name="fp" />

<%@page import="com.haircut.dao.FuncionarioDAO" %>
	
<jsp:useBean id="f" class="com.haircut.bean.Funcionario"></jsp:useBean>
<jsp:setProperty property="*" name="f" />

<%@page import="com.haircut.dao.ServicoDAO" %>
	
<jsp:useBean id="sv" class="com.haircut.bean.Servico"></jsp:useBean>
<jsp:setProperty property="*" name="sv" />


<head>
<meta charset="UTF-8">
</head>

<%

	String[] info = request.getParameterValues("valores");
	//String clID = request.getParameter("id_cliente");
	//String fmpID = request.getParameter("id_formapagamento");
	//System.out.println("ADD: " + clID + " # " + fmpID + " # ");
	
	/*for(String s: info) {
        System.out.println("Valores pegos: " + s);
    }*/

	//int clIDD = Integer.parseInt(clID);
	//int fmpIDD = Integer.parseInt(fmpID);

	int i = RegistrarServicoDAO.salvarRegistrarServico(info);	


	if(i > 0){
		response.sendRedirect("RegistrarServicoAddSucesso.jsp");
	}else{
		response.sendRedirect("RegistrarServicoAddErro.jsp");
	}

%>