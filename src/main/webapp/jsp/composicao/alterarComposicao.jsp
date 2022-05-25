<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="projectAppMusic.bean.Composicao"%>
<%@page import="projectAppMusic.controller.ControllerComposicao"%>
    
<!DOCTYPE html>
    <%
        Long cod = Long.parseLong(request.getParameter("ID"));
	    Composicao cmp = new Composicao(cod, "", "");
	    ControllerComposicao ca = new ControllerComposicao();

	    cmp = ca.alterar(cmp);	
        String pbusca = request.getParameter("PBUSCA");
     
    %>
    
<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>ALTERAR - COMPOSICAO</title>
    <body>
       <div class="container">
       <h1>ALTERAR COMPOSICAO</h1>
	        <form name="alterarComposicao" action="validarAlterarComposicao.jsp" method="get">
	            nome: <input type="text" name="NOME" value="<%=cmp.getNome_composicao()%>"> <br>
	            duracao: <input type="text" name="DURACAO" value="<%=cmp.getDuracao_composicao()%>"> <br> 
	            <input type="HIDDEN" name="PBUSCA" value="<%=pbusca%>">
	            <input type="HIDDEN" name="ID" value="<%=cod%>">  <br>
	            <input type="submit" name="Enviar" value="OK">
	        </form>
        </div>
    </body>
</html>