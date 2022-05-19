<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>INSERIR - USUÁRIO</title>
    <body>
       <div class="container"/>
        <h1>INSERIR USUÁRIO</h1>
        <form name="inserirUsuario" action="validaInserirUsuario.jsp" method="post">
           <!-- mudar para get, para ver o valor na url  -->
            Login: <input type="text" name="LOGIN" value=""> <br>
            Senha: <input type="password" name="SENHA" value=""> <br>
            Status: <input type="text" name="STATUS" value=""> <br>
            <input type="submit" name="Enviar" value="OK">
        </form>
        </div>
    </body>
</html>
