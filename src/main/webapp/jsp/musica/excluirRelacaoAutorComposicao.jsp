<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="projectAppMusic.bean.Musica"%>
<%@page import="projectAppMusic.controller.ControllerMusica"%>
<%
    String cod = request.getParameter("ID");
    Long id = Long.parseLong(cod);
    Musica msc = new Musica(id);
    ControllerMusica mscCont = new ControllerMusica();
    msc = mscCont.excluir(msc);
    
    String pbusca = request.getParameter("PBUSCA");
    
    // REDIRECIONA PARA A PAG LOGIN.JSP
     String url = "validarConsultarRelacaoAutorComp.jsp?id_musica=&OBS=" + pbusca;
    response.sendRedirect(url);

%>

