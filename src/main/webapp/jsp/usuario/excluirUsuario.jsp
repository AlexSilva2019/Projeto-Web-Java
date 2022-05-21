<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="projectAppMusic.bean.Usuario"%>
<%@page import="projectAppMusic.controller.ControllerUsuario"%>


<%
        String cod = request.getParameter("ID");
		Long idUsu = Long.parseLong(cod);
        Usuario usuEntrada = new Usuario(idUsu);
        ControllerUsuario contUsu = new ControllerUsuario();
        Usuario usuSaida = contUsu.excluir(usuEntrada);
        String pbusca = request.getParameter("PBUSCA");
        System.out.print(cod + "TESTE2");
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "validaConsultarUsuario.jsp?LOGIN=" + pbusca;
    response.sendRedirect(url);
%>