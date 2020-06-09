package com.pib.app.service;

import com.pib.app.vo.User;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.password.PasswordEncoder;

public class CustomAuthenticationProvider implements AuthenticationProvider {
    Logger logger = Logger.getLogger(CustomAuthenticationProvider.class);

    @Autowired
    private UserDetailsService userService;

    @Autowired
    private PasswordEncoder passwordEncoder;

    @Override
    public Authentication authenticate(Authentication authentication) throws AuthenticationException {
        String username = (String) authentication.getPrincipal();
        String password = passwordEncoder.encode((String) authentication.getCredentials());

        User user = null;

        try{
            user = (User) userService.loadUserByUsername(username);
        }catch (Exception e){
            throw new BadCredentialsException("login.error");
        }

        if(!matchPassword(password, user.getPassword())) {
            throw new BadCredentialsException("login.error");
        }

        return  new UsernamePasswordAuthenticationToken(username, password, user.getAuthorities());
    }

    @Override
    public boolean supports(Class<?> authentication) {
        return true;
    }

    private boolean matchPassword(String loginPwd, String password) {
        return loginPwd.equals(password);
    }
}
