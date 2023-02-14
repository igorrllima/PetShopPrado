package br.com.petShopPrado.dao;

import br.com.petShopPrado.connection.ConnectionFactory;
import br.com.petShopPrado.model.Tutor;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class TutorDAO {

    Connection con;

    public TutorDAO() {
        con = ConnectionFactory.getConnection();
    }

    public void cadastrar(Tutor tutor) {
        PreparedStatement stmt = null;
        String sql = "INSERT INTO client(nome, cpf, idade, email, telefone, endereco, cidade, cep, token, id_client) VALUES( ?,  ?,  ?,  ?, ?, ?, ?, ?, ?, 1)"; 
        try {
            stmt = con.prepareStatement(sql);
            stmt.setString(1, tutor.getNome());
            stmt.setString(2, tutor.getCpf());
            stmt.setInt(3, tutor.getIdade());
            stmt.setString(4, tutor.getEmail());
            stmt.setString(5, tutor.getTelefone());
            stmt.setString(6, tutor.getEndereco());
            stmt.setString(7, tutor.getCidade());
            stmt.setString(8, tutor.getCep());
            stmt.setString(9, tutor.getToken());
            stmt.execute();
            stmt.close();
        } catch (SQLException u) {
            throw new RuntimeException(u);
        }
    }

    /*public Tutor geTutor(String email) {
        Tutor tutor = new Tutor();
        PreparedStatement stmt = null;
        ResultSet rs = null;
        String sql = "select * from client where email = ?";

        try {
            stmt = con.prepareStatement(sql);
            stmt.setString(1, email);
            rs = stmt.executeQuery();
            if (rs.next()) {
                
            
            }
            stmt.close();
        } catch (SQLException u) {
            throw new RuntimeException(u);
        }
        return tutor;
    }*/
}
