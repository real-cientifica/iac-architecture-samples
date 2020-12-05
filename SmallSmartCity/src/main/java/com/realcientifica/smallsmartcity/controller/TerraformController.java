/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.realcientifica.smallsmartcity.controller;


import com.realcientifica.smallsmartcity.terraform.TerraformClient;
import java.io.File;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import static org.springframework.web.bind.annotation.RequestMethod.GET;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author jeanj
 */

@Controller
public class TerraformController {
    
    @RequestMapping("/criarVm")
    public String criarVm() throws Exception {
        try (TerraformClient client = new TerraformClient()) {
            client.setOutputListener(System.out::println);
            client.setErrorListener(System.err::println);
            client.setWorkingDirectory(new File("C:/Users/jeanj/terraform/Instância"));
            System.out.println(client.plan().get());
            //client.apply().get();
        }
        return "/cadastro";
    } 
    
    @RequestMapping("/destruirVm")
    public String destruirVm() throws Exception {
        try (TerraformClient client = new TerraformClient()) {
            client.setOutputListener(System.out::println);
            client.setErrorListener(System.err::println);
            client.setWorkingDirectory(new File("C:/Users/jeanj/terraform/Instância"));
            System.out.println(client.plan().get());
            //client.destroy().get();
        }
        return "/cadastro";
    }
    
    @RequestMapping("/criarRede")
    public String criarRede() throws Exception {
        try (TerraformClient client = new TerraformClient()) {
            client.setOutputListener(System.out::println);
            client.setErrorListener(System.err::println);
            client.setWorkingDirectory(new File("C:/Users/jeanj/terraform/VCN"));
            System.out.println(client.plan().get());
            //client.apply().get();
        }
        return "/redes";
    }
    
    @RequestMapping("/destruirRede")
    public String destruirRede() throws Exception {
        try (TerraformClient client = new TerraformClient()) {
            client.setOutputListener(System.out::println);
            client.setErrorListener(System.err::println);
            client.setWorkingDirectory(new File("C:/Users/jeanj/terraform/VCN"));
            System.out.println(client.plan().get());
            //client.destroy().get();
        }
        return "/redes";
    }
    
}
