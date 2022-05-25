<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="projectAppMusic.bean.Composicao"%>
<%@page import="projectAppMusic.controller.ControllerComposicao"%>
<%
		Long cod = Long.parseLong(request.getParameter("ID"));
		Composicao cmp = new Composicao(cod);
		ControllerComposicao ca = new ControllerComposicao();
		cmp = ca.excluir(cmp);
		String pbusca = request.getParameter("PBUSCA");
		
	
		// REDIRECIONA PARA A PAG LOGIN.JSP
		String url = "validarConsultarComposicao.jsp?LOGIN=" + pbusca;
		response.sendRedirect(url);
%>
