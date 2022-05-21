<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="projectAppMusic.bean.Usuario"%>
<%@page import="projectAppMusic.controller.ControllerUsuario"%>


<%
    Long id = Long.parseLong(request.getParameter("ID"));
    String login = request.getParameter("LOGIN");
    String senha = request.getParameter("SENHA");
    String status = request.getParameter("STATUS");
    String pbusca = request.getParameter("PBUSCA");

    Usuario usu = new Usuario(id,login,senha,status);
    ControllerUsuario usuCont = new ControllerUsuario();
    usu = usuCont.alterar(usu);
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "validaConsultarUsuario.jsp?LOGIN=" + pbusca;
    response.sendRedirect(url);
%>