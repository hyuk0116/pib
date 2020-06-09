package com.pib.app.service;

import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;
import org.springframework.security.authentication.BadCredentialsException;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class LoginFailureHandler implements AuthenticationFailureHandler {

    private String exceptionMs;

    public LoginFailureHandler(){
        this.exceptionMs = "login.error";
    }

    public String getExceptionMs() {
        return exceptionMs;
    }

    public void setExceptionMs(String exceptionMs) {
        this.exceptionMs = exceptionMs;
    }

    @Override
    public void onAuthenticationFailure(HttpServletRequest request, HttpServletResponse response, AuthenticationException authenticationException) throws IOException, ServletException {

        if(authenticationException instanceof BadCredentialsException){

            request.setAttribute(exceptionMs, authenticationException.getMessage());
            response.sendRedirect(request.getContextPath() + "/loginPage?fail=true");

        }
    }
}
