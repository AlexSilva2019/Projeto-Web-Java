<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="projectAppMusic.bean.Composicao"%>
<%@page import="projectAppMusic.controller.ControllerComposicao"%>
<%
    
	Long cod = Long.parseLong(request.getParameter("ID"));
    String nome = request.getParameter("NOME");
    String duracao = request.getParameter("DURACAO");
    String pbusca = request.getParameter("PBUSCA");
    Composicao cmp = new Composicao(cod, "NOME");
    ControllerComposicao ca = new ControllerComposicao();
    cmp = ca.alterar(cmp);
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "validarConsultarComposicao.jsp?NOME=" + pbusca;
    response.sendRedirect(url);
%>