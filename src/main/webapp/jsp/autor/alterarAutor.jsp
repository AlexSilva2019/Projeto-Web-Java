<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE html>
    <%
        Autor aut = new Autor(1L, "NOMEDOIS");
        ControllerAutor ca = new ControllerAutor();     
        aut = ca.alterar(aut);
        String pbusca = request.getParameter("PBUSCA");

    %>


<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>ALTERAR - AUTOR</title>
    <body>
       <div class="container"/>
       <h1>ALTERAR AUTOR</h1>
        <form name="alterarAutor" action="validaAlterarUsuario.jsp" method="get">
            Nome <input type="text" name="NOME" value="<%=usu.getNome()%>"> <br>
            <input type="HIDDEN" name="PBUSCA" value="<%=pbusca%>"> <br>
            <input type="submit" name="Enviar" value="OK">
        </form>
        <div>
    </body>
</html>