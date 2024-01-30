<%@page import="com.haircut.dao.FuncionarioDAO" %>
<jsp:useBean id="f" class="com.haircut.bean.Funcionario"></jsp:useBean>
<jsp:setProperty property="*" name="f"/>

<head>
<meta charset="UTF-8">
</head>

<%
	int i = FuncionarioDAO.salvarFuncionario(f);

	if(i > 0){
		response.sendRedirect("FuncionarioAddSucesso.jsp");
	}else{
		response.sendRedirect("FuncionarioAddErro.jsp");
	}

%>