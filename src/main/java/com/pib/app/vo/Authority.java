package com.pib.app.vo;

import org.springframework.security.core.GrantedAuthority;

public class Authority implements GrantedAuthority {

    private static final long serialVersionUID = 1L; ////warning 방지용

    private String authority;

    public void setAuthority(String authority) {
        this.authority = authority;
    }

    @Override
    public String getAuthority() {
        return this.authority;
    }
}
