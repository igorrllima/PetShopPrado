package br.com.petShopPrado.model;


import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

public class Servico {
    SimpleDateFormat formatter = new SimpleDateFormat("dd-MMM-yyyy", Locale.ENGLISH);
    private String tipoServico;
    private int animal;
    private String descricao;
    private String dataAgendamento;
    private double precoServico;
    private Animal anima;
    
    

    public String getTipoServico() {
        return tipoServico;
    }

    public void setTipoServico(String tipoServico) {
        this.tipoServico = tipoServico;
    }

    public int getAnimal() {
        return animal;
    }

    public void setAnimal(int animal) {
        this.animal = animal;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public String getDataAgendamento() {
        return dataAgendamento;
    }

    public void setDataAgendamento(String dataagendamento) {
        this.dataAgendamento = dataagendamento ;
    }

    public double getPrecoServico() {
        return precoServico;
    }

    public void setPrecoServico(double precoServico) {
        this.precoServico = precoServico;
    }

    public Animal getAnima() {
        return anima;
    }

    public void setAnima(Animal anima) {
        this.anima = anima;
    }

}
