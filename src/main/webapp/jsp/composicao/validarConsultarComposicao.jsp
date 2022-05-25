<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="projectAppMusic.bean.Usuario"%>
<%@page import="projectAppMusic.bean.Composicao"%>
<%@page import="projectAppMusic.controller.ControllerComposicao"%>
<--
<%
    String nome = request.getParameter("NOME");
	Composicao compEntrada = new Composicao(nome);
	ControllerComposicao ca  = new ControllerComposicao();
	List<Composicao> listComposicoes = ca.listar(compEntrada);
    Usuario usuLogado = (Usuario) session.getAttribute("UsuarioLogado");
    String url = "PBUSCA=" + nome+"&ID=" ;
    
%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>LISTA COMPOSICAO</title>
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
            <% if (!(listComposicoes.isEmpty())) { %>    
                <tbody>
                    <% for (Composicao listaComposicao: listComposicoes) { %>
                        <tr>
                            <td><%=listaComposicao.getCodigo_composicao()%></td>
                  			<td><%=listaComposicao.getNome_composicao()%></td>
                                <td><a href="excluirComposicao.jsp?<%=url + listaComposicao.getCodigo_composicao()%>">Excluir</a></td>
                                <td><a href="alterarComposicao.jsp?<%=url + listaComposicao.getCodigo_composicao()%>">Alterar</a></td>
                        </tr>
                    <% } %>
                </tbody>
            <% } %>
        </table>    
    </body>
</html>