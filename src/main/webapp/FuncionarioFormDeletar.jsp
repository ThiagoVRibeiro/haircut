<%@page import="com.haircut.dao.FuncionarioDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.haircut.bean.Funcionario"%>
    
<jsp:useBean id="f" class="com.haircut.bean.Funcionario"></jsp:useBean>
<jsp:setProperty property="*" name="f"/>

<%
	FuncionarioDAO.deletarFuncionario(f);
	response.sendRedirect("FuncionarioListar.jsp");
%>