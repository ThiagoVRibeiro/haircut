<%@page import="com.haircut.dao.ServicoDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.haircut.bean.Servico"%>
    
<jsp:useBean id="s" class="com.haircut.bean.Servico"></jsp:useBean>
<jsp:setProperty property="*" name="s"/>

<%
	ServicoDAO.deletarServico(s);
	response.sendRedirect("ServicoForm.jsp");
%>