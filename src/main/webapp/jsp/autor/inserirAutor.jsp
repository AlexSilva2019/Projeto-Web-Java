<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>INSERIR - AUTOR</title>
    <body>
       <div class="container"/>
        <h1>INSERIR AUTOR</h1>
        <form name="inserirAutor" action="validarInserirAutor.jsp" method="get">
            Nome: <input type="text" name="NOME" value=""> <br>
            <input type="submit" name="Enviar" value="OK">
        </form>
        </div>
    </body>
</html>