<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
    <%
        Long idUsu = request.getParameter("id Usuario");
        Usuario usuEntrada = new Usuario(idUsu);
        ControllerUsuario contUsu = new ControllerUsuario();
        Usuario usuSaida = contUsu.alterar(usuEntrada);
        String pbusca = request.getParameter("PBUSCA");
   
    %>
    
<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>ALTERAR - USUÁRIO</title>
    <body>
       <div class="container"/>
       <h1>ALTERAR USUÁRIO</h1>
        <form name="alterarUsuario" action="validaAlterarUsuario.jsp" method="get">
            Login: <input type="text" name="LOGIN" value="<%=usu.getLogin()%>"> <br>
            Senha: <input type="password" name="SENHA" value="<%=usu.getSenha()%>"> <br>
            Status: <input type="text" name="STATUS" value="<%=usu.getStatus()%>"> <br>
            <input type="HIDDEN" name="PBUSCA" value="<%=pbusca%>"> <br>
            <input type="submit" name="Enviar" value="OK">
        </form>
        <div>
    </body>
</html>