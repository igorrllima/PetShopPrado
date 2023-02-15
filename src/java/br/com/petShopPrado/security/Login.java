package br.com.petShopPrado.security;

import br.com.petShopPrado.connection.ConnectionFactory;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;


public class Login {
    private String login, senha;
    PasswordAuthentication pAut;

    public Login() {
        this.pAut = new PasswordAuthentication();
    }
    

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }
   public boolean authenticate() {
        Connection con = ConnectionFactory.getConnection();
        PreparedStatement stmt = null;
        ResultSet rs = null;
        
        String sql = "SELECT token  FROM client where email = ?";

        String token;

        try {
            stmt = con.prepareStatement(sql);
            stmt.setString(1, login);
            rs = stmt.executeQuery();

            if (rs.next()) {
                token = rs.getString(1);
                return pAut.authenticate(senha, token);
            }
        } catch (SQLException ex) {
            Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
}
