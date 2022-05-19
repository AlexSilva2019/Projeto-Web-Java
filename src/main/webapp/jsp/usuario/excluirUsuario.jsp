<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="projectAppMusic.bean.Usuario"%>
<%@page import="projectAppMusic.controller.ControllerUsuario"%>


<%
        Long idUsu = request.getParameter("id");
        Usuario usuEntrada = new Usuario(idUsu);
        ControllerUsuario contUsu = new ControllerUsuario();
        Usuario usuSaida = contUsu.excluir(usuEntrada);
        String pbusca = request.getParameter("PBUSCA");
    
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "validaConsultarUsuario.jsp?LOGIN=" + pbusca;
    response.sendRedirect(url);
%>