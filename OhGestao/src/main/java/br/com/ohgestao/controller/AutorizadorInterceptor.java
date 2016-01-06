package br.com.ohgestao.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;


public class AutorizadorInterceptor extends HandlerInterceptorAdapter {

	@Override
	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response, Object controller) throws Exception {

		String uri = request.getRequestURI();
		
			
		if (uri.endsWith("/admin") || uri.endsWith("/log")
				|| uri.endsWith("/admin/lojas/listDist")
				|| uri.endsWith("/produto/listaProdApp/1")
				|| uri.endsWith("/admin/lojas/json")
				|| uri.contains("resources") || uri.endsWith("/registro")
				|| uri.endsWith("/registrar") || uri.endsWith("/login")
				|| uri.endsWith("/logincliente")
				|| uri.endsWith("/pesqloja")
				|| uri.endsWith("/ohgestao/") || uri.contains("lojas") || uri.contains("/imageDisplay")) {

			return true;
			
		}
		return false; 

	}
}
