<%@page import="com.haircut.dao.ClienteDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.haircut.bean.Cliente"%>
    
<jsp:useBean id="c" class="com.haircut.bean.Cliente"></jsp:useBean>
<jsp:setProperty property="*" name="c"/>

<%
	ClienteDAO.deletarCliente(c);
	response.sendRedirect("ClienteForm.jsp");
%>