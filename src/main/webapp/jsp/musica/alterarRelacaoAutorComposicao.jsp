<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="projectAppMusic.bean.Autor"%>
<%@page import="projectAppMusic.controller.ControllerAutor"%>
<%@page import="projectAppMusic.bean.Composicao"%>
<%@page import="projectAppMusic.controller.ControllerComposicao"%>
    
<!DOCTYPE html>
    <%
        Long idAut = Long.parseLong(request.getParameter("ID"));
        Autor autEntrada = new Autor(idAut);
        ControllerAutor contAut = new ControllerAutor();
        Composicao cmp = new Composicao(cod, "", "");
	    ControllerComposicao ca = new ControllerComposicao();
        
	    cmp = ca.alterar(cmp);
        Autor autSaida = contAut.alterar(autEntrada);
        String pbusca = request.getParameter("PBUSCA");
 		
    %>
    
<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>ALTERAR - COMPOSICAO AUTOR</title>
    <body>
    	<div class="container"/>
       	<h1>ALTERAR - COMPOSICAO AUTOR</h1>
        <form name="alterarRelacaoAutorComposicao" action="validarAlterarRelacaoAutorComp.jsp" method="post">
            <table>
    		<tr>
              <td>Autor:</td>
                       <td>
                           <select NAME="NOME" class="browser-default">
                               <% for (Autor aut : contAut) { %>
                                   <% if( aut.getIdAutor() == idAut.getIdAutor()) { %>
                                       <option selected value="<%=aut.getIdAutor()%>"><%=autSaida.getNome()%></option>
                                   <% } else { %>
                                       <option value="<%=aut.getIdAutor()%>"><%=autSaida.getNome()%></option>
                                   <% } %>
                               <% } %>
                           </select> 
                       </td>
             </tr>

       		 <tr>
                        <td>Composicao:</td>
                        <td>
                            <select NAME ="NOME" class="browser-default">
                                <% for (Composicao comp : cmp) { %>
                                    <% if( comp.getCodigo_composicao() == comp.getNome_composicao()) { %>
                                        <option selected value="<%=comp.getCodigo_composicao()%>"><%=comp.getNome()%></option>
                                    <% } else { %>
                                        <option value="<%=comp.getCodigo_composicao()%>"><%=comp.getNome()%></option>
                                    <% } %>
                                <% } %>
                            </select> 
                        </td>
             </tr>
                    <tr>
                        <td>Observação:</td>
                        <td><input type="text" name="OBS" value="<%=usuPes.getObs()%>"></td>

                    </tr>
                </table>    
            <input type="HIDDEN" name="ID" value="<%=usuPes.getId()%>"> <br>
            <input type="HIDDEN" name="PBUSCA" value="<%=pbusca%>">
            <input type="submit" name="Enviar" value="OK">
        </form>
        <div>
    </body>
</html>