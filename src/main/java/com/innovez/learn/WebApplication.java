/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.innovez.learn;

import java.security.Principal;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * Application starter.
 * 
 * @author zakyalvan
 */
@SpringBootApplication
@RestController
public class WebApplication {
    public static void main(String[] args) {
        new SpringApplicationBuilder(WebApplication.class)
                .web(true)
                .build()
                .run(args);
    }
    
    @RequestMapping(value = "/user")
    public Principal user(Principal principal) {
        return principal;
    }
}
