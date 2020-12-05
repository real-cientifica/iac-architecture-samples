/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.realcientifica.smallsmartcity.model;

import java.util.Date;

/**
 *
 * @author jeanj
 */
public class MaquinaVirtual {
    private Integer idMv, state;
    private String nome, imagem;
    private Shape shape;
    private Date bkpProg;
    
    public Integer getIdMv() {
        return idMv;
    }

    public void setIdMv(Integer idMv) {
        this.idMv = idMv;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public Shape getShape() {
        return shape;
    }

    public void setShape(Shape shape) {
        this.shape = shape;
    }

    public String getImagem() {
        return imagem;
    }

    public void setImagem(String imagem) {
        this.imagem = imagem;
    }

    public Date getBkpProg() {
        return bkpProg;
    }

    public void setBkpProg(Date bkpProg) {
        this.bkpProg = bkpProg;
    }

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }

    public void agendarBackup(Date data) {
        this.bkpProg = data;
    }
    
    public void ligarVM() {
        this.state = 1;
    }
    
    public void desligarVM() {
        this.state = 0;
    }
    
    public void suspenderVM() {
        this.state = 2;
    }
    
}
