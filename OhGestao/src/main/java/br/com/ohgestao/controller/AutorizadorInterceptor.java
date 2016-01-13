package br.com.ohgestao.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;




public class AutorizadorInterceptor extends HandlerInterceptorAdapter {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object controller)
			throws Exception {

		String uri = request.getRequestURI();

		//Usuario usuario = (Usuario) request.getSession().getAttribute("usuarioLogado");
		
		if (request.getSession().getAttribute("usuarioLogado") != null) {

			return true;
		}

		if ( uri.endsWith("/login") || uri.endsWith("/registro") || uri.contains("resources")) {

			return true;

		}
		
		response.sendRedirect("/ohgestao/usuario/login");
		return true;

	}
}
