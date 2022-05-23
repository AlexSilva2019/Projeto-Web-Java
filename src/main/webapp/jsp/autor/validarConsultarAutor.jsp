<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="projectAppMusic.bean.Usuario"%>
<%@page import="projectAppMusic.bean.Autor"%>
<%@page import="projectAppMusic.controller.ControllerAutor"%>
<--
<%
    String nome = request.getParameter("NOME");
    Autor aut = new Autor(nome);
    ControllerAutor autcont = new ControllerAutor();
    List<Autor> auts = autcont.listar(aut);
    Usuario usuLogado = (Usuario) session.getAttribute("UsuarioLogado");
    String url = "PBUSCA=" + nome+"&ID=" ;
%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>LISTA AUTOR</title>
    <body>
        <table class="striped responsive-table">
            <thead>
              <tr>
                  <th data-field="Id">Id</th>
                  <th data-field="Nome">Nome</th>
                  <th data-field="Excluir">Excluir</th>
                  <th data-field="Alterar">Alterar</th>
              </tr>
            </thead>
            <% if (!(auts.isEmpty())) { %>    
                <tbody>
                    <% for (Autor listaAutor: auts) { %>
                        <tr>
                            <td><%=listaAutor.getIdAutor()%></td>
                  			<td><%=listaAutor.getNome()%></td>
                                <td><a href="excluirAutor.jsp?<%=url + listaAutor.getIdAutor()%>">Excluir</a></td>
                                <td><a href="alterarAutor.jsp?<%=url + listaAutor.getIdAutor()%>">Alterar</a></td>
                        </tr>
                    <% } %>
                </tbody>
            <% } %>
        </table>    
    </body>
</html>