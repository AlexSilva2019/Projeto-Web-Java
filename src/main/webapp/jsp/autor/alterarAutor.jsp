<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="projectAppMusic.bean.Autor"%>
<%@page import="projectAppMusic.controller.ControllerAutor"%>
    
<!DOCTYPE html>
    <%
        Long idAut = Long.parseLong(request.getParameter("ID"));
        Autor autEntrada = new Autor(idAut);
        ControllerAutor contAut = new ControllerAutor();
        Autor autSaida = contAut.buscar(autEntrada);
        String pbusca = request.getParameter("PBUSCA");
 
    %>
    
<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>ALTERAR - AUTOR</title>
    <body>
       <div class="container">
       <h1>ALTERAR AUTOR</h1>
	        <form name="alterarUsuario" action="validarAlterarAutor.jsp" method="get">
	            nome: <input type="text" name="NOME" value="<%=autSaida.getNome()%>"> <br>
	            <input type="HIDDEN" name="PBUSCA" value="<%=pbusca%>">
	            <input type="HIDDEN" name="ID" value="<%=idAut%>">  <br>
	            <input type="submit" name="Enviar" value="OK">
	        </form>
        </div>
    </body>
</html>