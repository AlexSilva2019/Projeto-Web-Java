<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="projectAppMusic.bean.Autor"%>
<%@page import="projectAppMusic.controller.ControllerAutor"%>
<%@page import="projectAppMusic.bean.Composicao"%>
<%@page import="projectAppMusic.controller.ControllerComposicao"%>

<%@page import="projectAppMusic.bean.Musica"%>
<%@page import="projectAppMusic.controller.ControllerMusica"%>

<%
    String cod = request.getParameter("ID");
    Long id = Long.parseLong(cod);
    Long idAutor = Long.parseLong(request.getParameter("ID_AUTOR"));
    Long idComp = Long.parseLong(request.getParameter("ID_COMPOSICAO"));
  
    String pbusca = request.getParameter("PBUSCA");
   	Autor autor = new Autor(idAutor);
   	Composicao composicao = new Composicao(idComp);
    Musica msc = new Musica(id,autor,composicao);
    ControllerMusica msCont = new ControllerMusica();
    msc = msCont.alterar(msc);
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "validarConsultarRelacaoAutorComp.jsp?id_musica=&OBS=" + pbusca;
    response.sendRedirect(url);
%> 