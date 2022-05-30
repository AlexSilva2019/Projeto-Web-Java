<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="projectAppMusic.bean.Autor"%>
<%@page import="projectAppMusic.controller.ControllerAutor"%>
<%@page import="projectAppMusic.bean.Composicao"%>
<%@page import="projectAppMusic.controller.ControllerComposicao"%>


<%
	Long idAutor = Long.parseLong(request.getParameter("ID_AUTOR"));
	Long idComposicao = Long.parseLong(request.getParameter("ID_COMP"));
    String nome = request.getParameter("NOME");
    Musica msc = new Musica();
    ControllerMusica muscCont = new ControllerMusica();
    msc = usupescont.inseri(msc);
    
// REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "validarrRelacaoAutorComp.jsp";
    response.sendRedirect(url);

%>