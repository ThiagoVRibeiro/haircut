<%@page import="com.haircut.dao.FormaPagamentoDAO" %>
<jsp:useBean id="f" class="com.haircut.bean.Cliente"></jsp:useBean>
<jsp:setProperty property="*" name="f"/>

<head>
<meta charset="UTF-8">
</head>

<%
	int i = FormaPagamentoDAO.salvarCliente(f);

	if(i > 0){
		response.sendRedirect("FormaPagamentoAddSucesso.jsp");
	}else{
		response.sendRedirect("FormaPagamentoErro.jsp");
	}

%>