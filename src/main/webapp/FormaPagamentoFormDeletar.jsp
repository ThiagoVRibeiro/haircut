<%@page import="com.haircut.dao.FormaPagamentoDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.haircut.bean.FormaPagamento"%>
    
<jsp:useBean id="f" class="com.haircut.bean.FormaPagamento"></jsp:useBean>
<jsp:setProperty property="*" name="f"/>

<%
	FormaPagamentoDAO.deletarFormaPagamento(f);
	response.sendRedirect("FormaPagamentoListar.jsp");
%>