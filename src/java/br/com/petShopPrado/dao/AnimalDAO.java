package br.com.petShopPrado.dao;

import br.com.petShopPrado.model.Animal;
import br.com.petShopPrado.connection.ConnectionFactory;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class AnimalDAO {

    Connection con;

    public AnimalDAO() {
        con = ConnectionFactory.getConnection();
    }

    public void cadastrarAnimal(Animal animal) {
        PreparedStatement stmt = null;
        String sql = "INSERT INTO animal(especie, nome) VALUE(?, ?)";
        try {
            stmt = con.prepareStatement(sql);
            stmt.setString(1, animal.getEspecie());
            stmt.setString(2, animal.getNome());
            stmt.execute();
            stmt.close();

        }catch(SQLException u){
            throw new RuntimeException(u);
        
        }

    }

}