<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="projectAppMusic.bean.Autor"%>
<%@page import="projectAppMusic.controller.ControllerAutor"%>
<%

    String nome = request.getParameter("NOME");

    Autor aut = new Autor(nome);
    ControllerAutor autcont = new ControllerAutor();
    aut = autcont.inserir(aut);

    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "inserirAutor.jsp";
    response.sendRedirect(url);
%>