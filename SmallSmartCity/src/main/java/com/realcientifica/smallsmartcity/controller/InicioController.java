/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.realcientifica.smallsmartcity.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author jeanj
 */
@Controller
public class InicioController {

    @RequestMapping("/home")
    public String securedPage() {
        return "home";
    }

    @RequestMapping("/")
    public String display() {
        return "index";
    }

    @RequestMapping("/cadastro")
    public String securedPage2() {
        return "cadastro";
    }

    @RequestMapping("/cadastroVm")
    public String securedPage3() {
        return "cadastroVm";
    }
    
    @RequestMapping("/teste")
    public String securedPage4() {
        return "teste";
    }
    
    @RequestMapping("/redes")
    public String securedPage6() {
        return "redes";
    }
}
