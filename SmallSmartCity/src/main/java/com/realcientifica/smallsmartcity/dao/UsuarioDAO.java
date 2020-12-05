/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.realcientifica.smallsmartcity.dao;

import com.realcientifica.smallsmartcity.model.Usuario;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import com.realcientifica.smallsmartcity.conexao.Conexao;
/**
 *
 * @author jeanj
 */
public class UsuarioDAO {
    
    
    public EntityManager getEM(){
        EntityManagerFactory factory = Persistence.createEntityManagerFactory("usuarioPU");
        
        return factory.createEntityManager();
    }
    
    public void adiciona(Usuario usuario) throws SQLException{
        
        EntityManager em = getEM();
        em.getTransaction().begin();
        em.persist(usuario);
        em.getTransaction().commit();
        em.close();
        
    }
    
    public List<Usuario> busca() throws SQLException{
        
        List<Usuario> lista = new ArrayList<>();
        Conexao conn = new  Conexao();
        String sql="select * from fornecedor";
        PreparedStatement ps = conn.getConexao().prepareStatement(sql);
        ResultSet rs = ps.executeQuery();
        while(rs.next()){
            Usuario fornecedor = new Usuario();
            
            fornecedor.setId(rs.getString("id"));
            fornecedor.setNome(rs.getString("nome"));
            fornecedor.setSobrenome(rs.getString("sobrenome"));
            fornecedor.setEmail(rs.getString("email"));
            fornecedor.setSenha(rs.getString("senha"));
            fornecedor.setCargo(rs.getString("cargo"));
            fornecedor.setTelefone(rs.getString("telefone"));
            fornecedor.setEmail(rs.getString("email"));
            
            lista.add(fornecedor);
        }
        
        return lista;
        
    }
}
