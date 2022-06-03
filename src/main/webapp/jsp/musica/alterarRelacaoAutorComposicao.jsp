<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="projectAppMusic.bean.Autor"%>
<%@page import="projectAppMusic.controller.ControllerAutor"%>
<%@page import="projectAppMusic.bean.Composicao"%>
<%@page import="projectAppMusic.controller.ControllerComposicao"%>
<%@page import="projectAppMusic.bean.Musica"%>
<%@page import="projectAppMusic.controller.ControllerMusica"%>

<%
	ControllerAutor autCont = new ControllerAutor();
    Autor aut = new Autor("");
    List<Autor> autr = autCont.listar(aut);

    ControllerComposicao cmpCont = new ControllerComposicao();
    Composicao cmpEnt = new Composicao("");
    List<Composicao> comp = cmpCont.listar(cmpEnt);

    String id = request.getParameter("ID");
    Long Id = Long.parseLong(id);
    Musica msc = new Musica(Id);
    ControllerMusica mscCont = new ControllerMusica();
    msc = mscCont.buscar(msc);
    String pbusca = request.getParameter("PBUSCA");

%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>ALTERAR - MUSICA</title>
    <body>
       <div class="container"/>
       <h1>ALTERAR - MUSICA</h1>
        <form name="alterarRelacaoAutorComposicao" action="validarAlterarRelacaoAutorComp.jsp" method="get">
            <table>
                <tr>
                    <td>Composicao:</td>
                        <td>
                            <select NAME="ID_COMPOSICAO" class="browser-default">
                                <% for (Composicao Comp : comp) { %>
                                    <% if( Comp.getCodigo_composicao() == msc.getComposicao().getCodigo_composicao()) { %>
                                        <option selected value="<%=Comp.getCodigo_composicao()%>"><%=Comp.getNome_composicao()%></option>
                                    <% } else { %>
                                        <option value="<%=Comp.getCodigo_composicao()%>"><%=Comp.getNome_composicao()%></option>
                                    <% } %>
                                <% } %>
                            </select> 
                        </td>
                </tr>
                <tr>
                        <td>Autor:</td>
                        <td>
                            <select NAME ="ID_AUTOR" class="browser-default">
                                <% for (Autor autorL : autr) { %>
                                    <% if(autorL.getIdAutor() == msc.getAutor().getIdAutor()) { %>
                                        <option selected value="<%=autorL.getIdAutor()%>"><%=autorL.getNome()%></option>
                                    <% } else { %>
                                        <option value="<%=autorL.getIdAutor()%>"><%=autorL.getNome()%></option>
                                    <% } %>
                                <% } %>
                            </select> 
                        </td>
                    </tr>
             
                </table>    
            <input type="HIDDEN" name="ID" value="<%=msc.getId_musica()%>"> <br>
            <input type="HIDDEN" name="PBUSCA" value="<%=pbusca%>">
            <input type="submit" name="Enviar" value="OK">
        </form>
        <div>
    </body>
</html>