<%@page import="com.haircut.dao.servicoDAO" %>
<jsp:useBean id="s" class="com.haircut.bean.Servico"></jsp:useBean>
<jsp:setProperty property="*" name="s"/>

<head>
<meta charset="UTF-8">
</head>

<%
	int i = servicoDAO.salvarServico(s);

	if(i > 0){
		response.sendRedirect("addServico-success.jsp");
	}else{
		response.sendRedirect("addServico-error.jsp");
	}

%>