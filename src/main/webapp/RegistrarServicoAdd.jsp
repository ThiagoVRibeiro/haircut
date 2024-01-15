<%@page import="com.haircut.dao.RegistrarServicoDAO" %>
<jsp:useBean id="r" class="com.haircut.bean.RegistrarServico"></jsp:useBean>
<jsp:setProperty property="*" name="r"/>

<head>
<meta charset="UTF-8">
</head>

<%

	int i = RegistrarServicoDAO.salvarRegistrarServico(r);	


	if(i > 0){
		response.sendRedirect("RegistrarServicoAddSucesso.jsp");
	}else{
		response.sendRedirect("RegistrarServicoAddErro.jsp");
	}

%>