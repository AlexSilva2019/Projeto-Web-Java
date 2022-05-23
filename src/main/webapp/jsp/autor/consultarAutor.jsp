<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>CONSULTAR - AUTOR</title>
    <body>
       <div class="container"/>
       <h1>CONSULTAR AUTOR</h1>
       <form name="consultarAutor" action="validarConsultarAutor.jsp" method="get">
           NOME <input type="text" name ="NOME" value=""> <br>
           <input type="submit" name ="Enviar" value="Enviar"> <br>
       </form>
       </div>
    </body>
</html>
