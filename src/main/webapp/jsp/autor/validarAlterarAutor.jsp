<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="projectAppMusic.bean.Autor"%>
<%@page import="projectAppMusic.controller.ControllerAutor"%>
<%
    
	Long id = Long.parseLong(request.getParameter("ID"));
    String nome = request.getParameter("NOME");
    String pbusca = request.getParameter("PBUSCA");
    Autor aut = new Autor(id,nome);
    ControllerAutor autCont = new ControllerAutor();
    aut = autCont.alterar(aut);
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "validarConsultarAutor.jsp?NOME=" + pbusca;
    response.sendRedirect(url);
%>