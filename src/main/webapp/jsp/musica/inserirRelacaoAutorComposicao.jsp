<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="projectAppMusic.bean.Autor"%>
<%@page import="projectAppMusic.controller.ControllerAutor"%>
<%@page import="projectAppMusic.bean.Composicao"%>
<%@page import="projectAppMusic.controller.ControllerComposicao"%>

<%
    Autor aut = new Autor("");
    ControllerAutor autcont = new ControllerAutor();
    List<Autor> listaAutores = autcont.listar(aut);

    Composicao compEntrada = new Composicao("");
    ControllerComposicao ca  = new ControllerComposicao();
    List<Composicao> listacomposicao = ca.listar(compEntrada);

%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>INSERIR MUSICA</title>
    <body>
        <div class="container"/>
            <h1>INSERIR MUSICA </h1>
            <form name="inserirRelacaoAutorComposicao" action="validarrRelacaoAutorComp.jsp" method="POST">
                <table>
                    <tr>
                        <td>Autor</td>
                        <td>
                            <select NAME ="NOME" class="browser-default">
                                <% for (Autor  listagemAutor: listaAutores) { %>
                                    <option value="<%=aut.getIdAutor()%>"><%=aut.getNome()%></option>
                                <% } %>
                            </select> 
                        </td>
                    </tr>
                    <tr>
                        <td>Composição</td>
                        <td>
                            <select NAME="NOME" class="browser-default">
                                <% for (Composicao listagemCmp: listacomposicao) { %>
                                    <option value="<%=listacomposicao.getCodigo_composicao()%>"><%=listacomposicao.getNome_composicao()%></option>
                                <% } %>
                            </select> 
                        </td>
                    </tr>
                    <tr>
                        <td>Observação:</td>
                        <td><input type="text" name="OBS" value=""></td>
                    </tr>
                </table>    
                <input type="submit" name="Enviar" value="Enviar">  <br>
            </form>
        </div>                     
    </body>
</html>
