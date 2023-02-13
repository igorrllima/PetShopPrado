package br.com.petShopPrado.model;

import java.util.Date;

public class Servico {

    private String tipoServico;
    private String descricao;
    private Date dataagendamento;
    private double precoServico;

    public String getTipoServico() {
        return tipoServico;
    }

    public void setTipoServico(String tipoServico) {
        this.tipoServico = tipoServico;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public Date getDataagendamento() {
        return dataagendamento;
    }

    public void setDataagendamento(Date dataagendamento) {
        this.dataagendamento = dataagendamento;
    }

    public double getPrecoServico() {
        return precoServico;
    }

    public void setPrecoServico(double precoServico) {
        this.precoServico = precoServico;
    }

}
