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
            <a class='dropdown-button btn' data-beloworigin="true" href='#' data-activates='dropdown1'>Manter Usuário</a>        
            <a class='dropdown-button btn' data-beloworigin="true" href='#' data-activates='dropdown2'>Manter Pessoa</a>        
            <a class='dropdown-button btn' data-beloworigin="true" href='#' data-activates='dropdown3'>Manter Controle de Acesso</a>        

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
                    <li><a href="../pessoa/inserirPessoa.jsp"> InseriPessoa </a></li>
                    <li><a href="../pessoa/consultarPessoa.jsp"> ConsultaPessoa </a></li>
                </ul>

                <ul id='dropdown2' class='dropdown-content'>
                    <li><a href="../pessoa/consultarPessoa.jsp"> ConsultaPessoa </a></li>
                </ul>

                <!-- Dropdown3 Structure -->
                <ul id='dropdown3' class='dropdown-content'>
                    <li><a href="../usupes/inserirRelacaoUsuarioPessoa.jsp"> InseriUsuarioPessoa </a></li>
                    <li><a href="../usupes/consultarRelacaoUsuarioPessoa.jsp"> ConsultaUsuarioPessoa </a></li>
                </ul>

                <ul id='dropdown3' class='dropdown-content'>
                    <li><a href="../usuario/consultarUsuarioPessoa.jsp"> ConsultaUsuarioPessoa </a></li>
                </ul>


    </body>
</html>