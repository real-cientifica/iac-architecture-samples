/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.realcientifica.smallsmartcity.model;

/**
 *
 * @author jeanj
 */
public class Shape {
    private Integer idShape, ram, vnics, ocpu;
    private String nome, armazenamento;
    private Double bandaDeRede;
    
    public Integer getIdShape() {
        return idShape;
    }

    public void setIdShape(Integer idShape) {
        this.idShape = idShape;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public Integer getOcpu() {
        return ocpu;
    }

    public void setOcpu(Integer ocpu) {
        this.ocpu = ocpu;
    }

    public String getArmazenamento() {
        return armazenamento;
    }

    public void setArmazenamento(String armazenamento) {
        this.armazenamento = armazenamento;
    }

    public Integer getRam() {
        return ram;
    }

    public void setRam(Integer ram) {
        this.ram = ram;
    }

    public Integer getVnics() {
        return vnics;
    }

    public void setVnics(Integer vnics) {
        this.vnics = vnics;
    }

    public Double getBandaDeRede() {
        return bandaDeRede;
    }

    public void setBandaDeRede(Double bandaDeRede) {
        this.bandaDeRede = bandaDeRede;
    }
    
}
