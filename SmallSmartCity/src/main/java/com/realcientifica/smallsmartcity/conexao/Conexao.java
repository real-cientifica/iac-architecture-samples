/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.realcientifica.smallsmartcity.conexao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;

/**
 *
 * @author jeanj
 */
public class Conexao {
    
    private Connection conn;
    
    private void conectar(){
        System.out.println("Conectando ao banco...");
        try{
            Class.forName("com.oracle.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:oracle:thin:realcientifica:17714:TCC", "ADMIN", "Larocalaroca2805");
            System.out.println("Conectado...");
        }catch(ClassNotFoundException e){
            System.out.println("Classe não encontrada, adicione o driver nas bibliotecas");
            java.util.logging.Logger.getLogger(Conexao.class.getName()).log(Level.SEVERE, null,e);
        }catch(SQLException e){
            System.out.println(e);
        }
    }
    
    public Connection getConexao(){
        conectar();
        
        return conn;
    }
    
}
