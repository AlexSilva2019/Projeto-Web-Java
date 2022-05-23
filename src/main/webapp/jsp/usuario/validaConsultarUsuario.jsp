<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="projectAppMusic.bean.Usuario"%>
<%@page import="projectAppMusic.controller.ControllerUsuario"%>
<%@page import="java.util.List"%>

<%
    String login = request.getParameter("LOGIN");
    Usuario  usu = new Usuario(login);
    ControllerUsuario usucont = new ControllerUsuario();
    List<Usuario> usus = usucont.listar(usu);
   // Usuario usuLogado = (Usuario) session.getAttribute("UsuarioLogado");
    String url = "PBUSCA=" + usu.getLogin()+"&ID=" ;
    
%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>LISTA USUÁRIOS</title>
    <body>
        <table class="striped responsive-table">
            <thead>
              <tr>
                  <th data-field="Id">Id</th>
                  <th data-field="Login">Login</th>
                  <th data-field="Senha">Senha</th>
                  <th data-field="Status">Status</th>
                  <th data-field="Excluir">Excluir</th>
                  <th data-field="Alterar">Alterar</th>
              </tr>
            </thead>
            <% if (!(usus.isEmpty())) { %>    
                <tbody>
                    <% for (Usuario listaUsuario : usus) { %>
                        <tr>
                            <td><%=listaUsuario.getIdUsu()%></td>
                            <td><%=listaUsuario.getLogin()%></td>
                            <td><%=listaUsuario.getSenha()%></td>
                            <td><%=listaUsuario.getStatus()%></td>
                                <td><a href="excluirUsuario.jsp?<%=url + listaUsuario.getIdUsu()%>">Excluir</a></td>
                                <td><a href="alterarUsuario.jsp?<%=url + listaUsuario.getIdUsu()%>">Alterar</a></td>
                        </tr>
                    <% } %>
                </tbody>
            <% } %>
        </table>    
    </body>
</html>