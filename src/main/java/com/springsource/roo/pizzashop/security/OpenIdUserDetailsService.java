package com.springsource.roo.pizzashop.security;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;

import java.util.Collection;
import java.util.HashSet;

public class OpenIdUserDetailsService implements UserDetailsService {
    public UserDetails loadUserByUsername(String openIdIdentifier) {
        return new UserDetails() {
            @Override
            public Collection<? extends GrantedAuthority> getAuthorities() {
                HashSet grantedAuthorities = new HashSet();
                grantedAuthorities.add(new SimpleGrantedAuthority("USER"));
                return grantedAuthorities;
            }

            @Override
            public String getPassword() {
                return "something";  //To change body of implemented methods use File | Settings | File Templates.
            }

            @Override
            public String getUsername() {
                return "andrew";  //To change body of implemented methods use File | Settings | File Templates.
            }

            @Override
            public boolean isAccountNonExpired() {
                return true;  //To change body of implemented methods use File | Settings | File Templates.
            }

            @Override
            public boolean isAccountNonLocked() {
                return true;  //To change body of implemented methods use File | Settings | File Templates.
            }

            @Override
            public boolean isCredentialsNonExpired() {
                return true;  //To change body of implemented methods use File | Settings | File Templates.
            }

            @Override
            public boolean isEnabled() {
                return true;  //To change body of implemented methods use File | Settings | File Templates.

            }
        };
    }
}
