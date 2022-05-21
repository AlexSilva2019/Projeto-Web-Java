<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="projectAppMusic.bean.Usuario"%>
<%@page import="projectAppMusic.controller.ControllerUsuario"%>
    
<!DOCTYPE html>
    <%
        Long idUsu = Long.parseLong(request.getParameter("ID"));
        Usuario usuEntrada = new Usuario(idUsu);
        ControllerUsuario contUsu = new ControllerUsuario();
        Usuario usuSaida = contUsu.buscar(usuEntrada);
        String pbusca = request.getParameter("PBUSCA");
        
   
    %>
    
<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>ALTERAR - USUÁRIO</title>
    <body>
       <div class="container">
       <h1>ALTERAR USUÁRIO</h1>
	        <form name="alterarUsuario" action="validaAlterarUsuario.jsp" method="get">
	            Login: <input type="text" name="LOGIN" value="<%=usuSaida.getLogin()%>"> <br>
	            Senha: <input type="password" name="SENHA" value="<%=usuSaida.getSenha()%>"> <br>
	            Status: <input type="text" name="STATUS" value="<%=usuSaida.getStatus()%>"> <br>
	            <input type="HIDDEN" name="PBUSCA" value="<%=pbusca%>">
	            <input type="HIDDEN" name="ID" value="<%=idUsu%>">  <br>
	            <input type="submit" name="Enviar" value="OK">
	        </form>
        </div>
    </body>
</html>