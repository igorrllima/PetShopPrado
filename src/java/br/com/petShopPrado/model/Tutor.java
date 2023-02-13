package br.com.petShopPrado.model;

import br.com.petShopPrado.security.PasswordAuthentication;

/**
 *
 * @author 55439
 */
public class Tutor {

    private String nome;
    private String cpf;
    private String email;
    private String cep;
    private String endereco;
    private String telefone;
    private int idade;
    private String senha;
    private String token;

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getCep() {
        return cep;
    }

    public void setCep(String cep) {
        this.cep = cep;
    }

    public String getEndereco() {
        return endereco;
    }

    public void setEndereco(String endereco) {
        this.endereco = endereco;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    public int getIdade() {
        return idade;
    }

    public void setIdade(int idade) {
        this.idade = idade;
    }

    public String setSenha() {
        return senha;
    }

    public void setSenhaConfirmar(String senhaConfirmar) {
        if (senha.equals(senhaConfirmar)) {
            PasswordAuthentication pa = new PasswordAuthentication();
            this.setToken(pa.hash(senha));
        } else {
            this.senha = null;
        }
    }

    public String getToken() {
        return token;
    }

    public void setToken(String token) {
        this.token = token;
    }

}
