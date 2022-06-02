<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>CONSULTAR - MUSICA</title>
    <body>
       <div class="container"/>
       <h1>CONSULTAR MUSICA</h1>
       <form name="consultarAutor" action="validarConsultarRelacaoAutorComp.jsp" method="GET">
           Id_musica <input type="" name ="id_musica" value=""> <br>
           <input type="submit" name ="Enviar" value="Enviar"> <br>
       </form>
       </div>
    </body>
</html>