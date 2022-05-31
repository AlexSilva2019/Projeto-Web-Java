<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="projectAppMusic.bean.Autor"%>
<%@page import="projectAppMusic.bean.Composicao"%>
<%@page import="projectAppMusic.bean.Musica"%>
<%@page import="projectAppMusic.controller.ControllerMusica"%>

<%
  
    Long id = Long.parseLong((request.getParameter("ID_da_Musica")));
	
 
 	Musica msc = new Musica(id);

    ControllerMusica muscCont  = new ControllerMusica();
    
    List<Musica> listMusicas = muscCont.listar(msc);
    String url = "PBUSCA=" + msc.getId_musica() +"&ID=" ;
%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>LISTA MUSICA</title>
    <body>
        <table class="striped responsive-table">
            <thead>
              <tr>
                  <th data-field="IdMusica">id_musica</th>
                  <th data-field="IdAutor">IdAutor</th>
                  <th data-field="NomeAutor">NomeAutor</th>
                  <th data-field="IdUComposicao">IdComposicao</th>
                  <th data-field="NomeComposicao">NomeComposicao</th>
                  <th data-field="Excluir">Excluir</th>
                  <th data-field="Alterar">Alterar</th>
              </tr>
            </thead>
            <% if (!(listMusicas.isEmpty())) { %>    
                <tbody>
                    <% for (Musica listagemMusica : listMusicas) { %>
                        <tr>
                            <td><%=listagemMusica.getId_musica()%></td>
                            <td><%=listagemMusica.getAutor()%></td>
                            <td><%=listagemMusica.getAutor().getNome()%></td>
                            <td><%=listagemMusica.getComposicao()%></td>
                            <td><%=listagemMusica.getComposicao().getNome_composicao()%></td>
                            
                            
                                <td><a href="excluirRelacaoAutorComposicao.jsp?<%=url + listagemMusica.getId_musica()%>">Excluir</a></td>
                                <td><a href="alterarRelacaoAutorComposicao.jsp?<%=url + listagemMusica.getId_musica()%>">Alterar</a></td>
                            
                        </tr>
                    <% } %>
                </tbody>
            <% } %>
        </table>    
    </body>
</html>