<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>CONSULTAR - COMPOSICAO</title>
    <body>
       <div class="container"/>
       <h1>CONSULTAR COMPOSICAO</h1>
       <form name="consultarComposicao" action="validarConsultarComposicao.jsp" method="get">
           NOME <input type="text" name ="NOME" value=""> <br>
           <input type="submit" name ="Enviar" value="Enviar"> <br>
       </form>
       </div>
    </body>
</html>
