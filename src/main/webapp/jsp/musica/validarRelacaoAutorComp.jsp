<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="projectAppMusic.bean.Autor"%>
<%@page import="projectAppMusic.bean.Composicao"%>
<%@page import="projectAppMusic.bean.Musica"%>
<%@page import="projectAppMusic.controller.ControllerMusica"%>


<%
	Long idAutor = Long.parseLong(request.getParameter("ID_AUTOR"));
	Long idComposicao = Long.parseLong(request.getParameter("ID_COMPOSICAO"));
    
	 Autor autor = new Autor(idAutor);
     
     Composicao composicao = new Composicao(idComposicao);
     
     Musica msc = new Musica(autor, composicao);

	
    ControllerMusica muscCont = new ControllerMusica();
    msc = muscCont.inserir(msc);
    
// REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "inserirRelacaoAutorComposicao.jsp";
    response.sendRedirect(url);

%>