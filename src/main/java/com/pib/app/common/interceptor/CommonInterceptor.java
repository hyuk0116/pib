package com.pib.app.common.interceptor;

import org.apache.log4j.Logger;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CommonInterceptor extends HandlerInterceptorAdapter {
	Logger logger = Logger.getLogger(CommonInterceptor.class);

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		logger.info("call preHandle");
		return super.preHandle(request, response, handler);
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) {
		logger.info("call postHandle");

		try {
			super.postHandle(request, response, handler, modelAndView);
		} catch (Exception e) {
			logger.debug(e.getMessage());
		}
	}

	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) {
		logger.info("call afterCompletion");

		try {
			super.afterCompletion(request, response, handler, ex);
		} catch (Exception e) {
			logger.debug(e.getMessage());
		}
	}
	
}
