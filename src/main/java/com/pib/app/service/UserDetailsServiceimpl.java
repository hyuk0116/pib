package com.pib.app.service;

import com.pib.app.dao.AuthorityDAO;
import com.pib.app.dao.UserDAO;
import com.pib.app.vo.Authority;
import com.pib.app.vo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserDetailsServiceimpl implements UserDetailsService {

    @Autowired
    private UserDAO usermapper;


    @Autowired
    private AuthorityDAO authoritymapper;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        User user = usermapper.selectUser(username);
        List<Authority> authority = authoritymapper.selectAuthority(username);

        /*List<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();

        for(Authority auth : authority){
            authorities.add(new SimpleGrantedAuthority(auth.getAuthority()));
        }*/

        user.setAuthorities(authority);

        return user;
    }
}
