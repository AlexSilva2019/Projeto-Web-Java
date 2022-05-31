<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="projectAppMusic.bean.Usuario"%>
<%@page import="projectAppMusic.controller.ControllerUsuario"%>

<%
    String login = request.getParameter("LOGIN");
    String senha = request.getParameter("SENHA");
    Usuario usuEntrada = new Usuario(login,senha);
    Usuario usuSaida = new Usuario();
    ControllerUsuario usucont = new ControllerUsuario();
    if(usucont.validar(usuSaida) == true){
    	usuSaida = usuEntrada; 
    	}
    
    session.setAttribute("UsuarioLogado",usuSaida);
%>


<!DOCTYPE html>
<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>SISTEMA </title>
    <body>
            <!-- Dropdown1 Trigger -->
            <a class='dropdown-button btn' data-beloworigin="true" href='#' data-activates='dropdown1'>Usuário</a>        
            <a class='dropdown-button btn' data-beloworigin="true" href='#' data-activates='dropdown2'>Autor</a>
            <a class='dropdown-button btn' data-beloworigin="true" href='#' data-activates='dropdown3'>Composição</a>         
            <a class='dropdown-button btn' data-beloworigin="true" href='#' data-activates='dropdown4'>Musica</a>        

                <!-- Dropdown1 Structure -->
                <ul id='dropdown1' class='dropdown-content'>
                    <li><a href="../usuario/inserirUsuario.jsp"> InseriUsuario </a></li>
                    <li><a href="../usuario/consultarUsuario.jsp"> ConsultaUsuarioParametro </a></li>
                </ul>
                
                <ul id='dropdown1' class='dropdown-content'>
                    <li><a href="../usuario/consultarUsuario.jsp"> ConsultaUsuarioParametro </a></li>
                </ul>

                <!-- Dropdown2 Structure -->
                <ul id='dropdown2' class='dropdown-content'>
                    <li><a href="../autor/inserirAutor.jsp"> InserirAutor </a></li>
                    <li><a href="../autor/consultarAutor.jsp"> ConsultarAutor </a></li>
                </ul>

                <ul id='dropdown2' class='dropdown-content'>
                    <li><a href="../autor/consultarAutor.jsp"> ConsultarAutor </a></li>
                </ul>

                <!-- Dropdown3 Structure -->
                <ul id='dropdown3' class='dropdown-content'>
                    <li><a href="../composicao/inserirComposicao.jsp"> InserirComposicao </a></li>
                    <li><a href="../composicao/consultarComposicao.jsp"> ConsultarComposicao </a></li>
                </ul>

                <ul id='dropdown3' class='dropdown-content'>
                    <li><a href="../composicao/consultarComposicao.jsp"> ConsultarComposicao </a></li>
                </ul>
                
                <!-- Dropdown4 Structure -->
                <ul id='dropdown4' class='dropdown-content'>
                    <li><a href="../musica/inserirRelacaoAutorComposicao.jsp"> InserirMusica</a></li>
                    <li><a href="../musica/consultarRelacaoAutorComposicao.jsp"> ConsultarMusica</a></li>
                </ul>

                <ul id='dropdown4' class='dropdown-content'>
                    <li><a href="../musica/consultarRelacaoAutorComposicao.jsp"> ConsultarMusica</a></li>
                </ul>
                
                
    </body>
</html>