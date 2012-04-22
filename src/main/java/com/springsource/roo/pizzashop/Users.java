package com.springsource.roo.pizzashop;

import javax.validation.constraints.NotNull;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class Users {

    @NotNull
    private String username;

    @NotNull
    private String password;

    private Boolean enabled;
}
