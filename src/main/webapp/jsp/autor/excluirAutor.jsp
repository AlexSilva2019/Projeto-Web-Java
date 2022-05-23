<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="projectAppMusic.bean.Autor"%>
<%@page import="projectAppMusic.controller.ControllerAutor"%>
<%
		String cod = request.getParameter("ID");
		Long idAutor = Long.parseLong(cod);
		Autor autEntrada = new Autor(idAutor);
		ControllerAutor contAut = new ControllerAutor();
		Autor autSaida = contAut.excluir(autEntrada);
		String pbusca = request.getParameter("PBUSCA");
		
		// REDIRECIONA PARA A PAG LOGIN.JSP
		String url = "validarConsultarAutor.jsp?LOGIN=" + pbusca;
		response.sendRedirect(url);
%>
