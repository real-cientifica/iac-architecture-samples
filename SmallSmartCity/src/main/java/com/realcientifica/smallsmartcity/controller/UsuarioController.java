/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.realcientifica.smallsmartcity.controller;

import com.realcientifica.smallsmartcity.dao.UsuarioDAO;
import com.realcientifica.smallsmartcity.model.Usuario;
import java.sql.SQLException;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author Jean
 */
public class UsuarioController {
    
    @RequestMapping(value = "/cadastrar", method = RequestMethod.POST)
    public ResponseEntity<String> cadastrar(@RequestBody Usuario usuario){
        UsuarioDAO dao = new UsuarioDAO();
        try{
            dao.adiciona(usuario);
            StringBuilder str = new StringBuilder("Cliente cadastrado: "+usuario.getNome());
            return new ResponseEntity(str,HttpStatus.OK);
        }catch(SQLException e){
            System.out.println(e);
            StringBuilder str = new StringBuilder("Cliente não cadastrado: "+usuario.getNome());
            return new ResponseEntity(str,HttpStatus.BAD_REQUEST);
        }
    }
    
    @RequestMapping("/listar")
    public String listar(Model model){
        UsuarioDAO dao = new UsuarioDAO();
        try{
            model.addAttribute("lista", dao.busca());
        }catch(Exception e){
            System.out.println(e);
        }
        
        return "exibir";
    } 
    
    public void atualizar (Usuario usuario){
        
    }
    
    public void excluir (Usuario usuario){
        
    }
    
}
