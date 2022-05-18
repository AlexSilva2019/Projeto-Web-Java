<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="projectAppMusic.bean.Usuario"%>
<%@page import="projectAppMusic.controller.ControllerUsuario"%>


<%
    String login = request.getParameter("LOGIN");
    String senha = request.getParameter("SENHA");
    String status = request.getParameter("STATUS");
    Usuario usu = new Usuario(login,senha,status,tipo);
    ControllerUsuario usucont = new ControllerUsuario();
    usu = usucont.inserir(usu);

    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "inserirUsuario.jsp";
    response.sendRedirect(url);
%>

<HTML>
    <BODY>
        <%=login%>  <BR>
        <%=senha%>  <BR>
        <%=status%> <BR>
    </BODY>
</HTML>
