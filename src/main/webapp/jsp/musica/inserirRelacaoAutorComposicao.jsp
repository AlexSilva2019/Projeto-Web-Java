<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="projectAppMusic.bean.Autor"%>
<%@page import="projectAppMusic.controller.ControllerAutor"%>
<%@page import="projectAppMusic.bean.Composicao"%>
<%@page import="projectAppMusic.controller.ControllerComposicao"%>

<%
    
    ControllerAutor autcont = new ControllerAutor();
	Autor aut = new Autor("");
    List<Autor> listaAutores = autcont.listar(aut);
	
    ControllerComposicao ca  = new ControllerComposicao();
    Composicao compEntrada = new Composicao("");
    List<Composicao> listacomposicao = ca.listar(compEntrada);

  
%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>INSERIR MUSICA</title>
    <body>
        <div class="container"/>
            <h1>INSERIR MUSICA </h1>
            <form name="inserirRelacaoAutorComposicao" action="validarRelacaoAutorComp.jsp" method="POST">
                <table>
                    <tr>
                        <td>Autor</td>
                        <td>
                            <select name="ID_AUTOR" class="browser-default">
                                <% for (Autor  listagemAutor: listaAutores) { %>
                                    <option value="<%=listagemAutor.getIdAutor()%>"><%=listagemAutor.getNome()%></option>
                                <% } %>
                            </select> 
                        </td>
                    </tr>
                    <tr>
                        <td>Composição</td>
                        <td>
                            <select name="ID_COMPOSICAO" class="browser-default">
                                <% for (Composicao listagemCmp: listacomposicao) { %>
                                    <option value="<%=listagemCmp.getCodigo_composicao()%>"><%=listagemCmp.getNome_composicao()%></option>
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
