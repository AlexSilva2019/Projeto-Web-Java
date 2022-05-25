<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>INSERIR - COMPOSIÇÃO</title>
    <body>
       <div class="container"/>
        <h1>INSERIR COMPOSIÇÃO</h1>
        <form name="inserirAutor" action="validarInserirComposicao.jsp" method="get">
            Nome: <input type="text" name="NOME" value=""> <br>
            Duracao: <input type="text" name="DURACAO DA MUSICA" value=""> <br>
            <input type="submit" name="Enviar" value="OK">
        </form>
        </div>
    </body>
</html>