<%@page import="com.haircut.dao.ServicoDAO" %>
<jsp:useBean id="s" class="com.haircut.bean.Servico"></jsp:useBean>
<jsp:setProperty property="*" name="s"/>

<head>
<meta charset="UTF-8">
</head>

<%
	int i = ServicoDAO.salvarServico(s);

	if(i > 0){
		response.sendRedirect("ServicoAddSucesso.jsp");
	}else{
		response.sendRedirect("ServicoAddErro.jsp");
	}

%>