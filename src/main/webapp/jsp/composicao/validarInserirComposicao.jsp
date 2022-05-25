<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="projectAppMusic.bean.Composicao"%>
<%@page import="projectAppMusic.controller.ControllerComposicao"%>
<%

    String nome = request.getParameter("NOME");
	String duracaoComp = request.getParameter("DURACAO DA MUSICA");
	
	Composicao compEntrada = new Composicao(nome, duracaoComp);

    ControllerComposicao ca  = new ControllerComposicao();
    
    Composicao compSaida = ca.inserir(compEntrada);

    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "inserirComposicao.jsp";
    response.sendRedirect(url);		   
        
%>

<HTML>
    <BODY>
        <%=nome%>   	<BR>
        <%=duracaoComp%>   <BR>
    </BODY>
</HTML>
