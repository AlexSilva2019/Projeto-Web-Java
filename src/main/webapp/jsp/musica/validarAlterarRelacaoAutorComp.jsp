<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="projectAppMusic.bean.Autor"%>
<%@page import="projectAppMusic.controller.ControllerAutor"%>
<%@page import="projectAppMusic.bean.Compposicao"%>
<%@page import="projectAppMusic.controller.ControllerComposicao"%>

<%@page import="projectAppMusic.bean.Musica"%>
<%@page import="projectAppMusic.controller.ControllerMusica"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    int idAutor = Integer.parseInt(request.getParameter(""));
    int idComp = Integer.parseInt(request.getParameter(""));
    String obs = request.getParameter("OBS");
    String pbusca = request.getParameter("PBUSCA");
    Musica msc = new Musica(id,idAutor,idComp,obs);
    ControllerMusica msCont = new ControllerMusica();
    msCont = usupescont.alterar(msCont);
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "validaConsultarRelacaoAutorComp.jsp?OBS=" + pbusca;
    response.sendRedirect(url);
%> 