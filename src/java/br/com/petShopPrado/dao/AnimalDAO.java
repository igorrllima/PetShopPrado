package br.com.petShopPrado.dao;

import br.com.petShopPrado.model.Animal;
import br.com.petShopPrado.connection.ConnectionFactory;
import br.com.petShopPrado.model.Tutor;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class AnimalDAO {

    Connection con;

    public AnimalDAO() {
        con = ConnectionFactory.getConnection();
    }

    public void cadastrarAnimal(Animal animal) {
        PreparedStatement stmt = null;
        String sql = "INSERT INTO animal(dono , especie, nome) VALUE(? , ?, ?)";
        try {

            stmt = con.prepareStatement(sql);
            stmt.setInt(1, animal.getTutor().getIdClient());
            stmt.setString(2, animal.getEspecie());
            stmt.setString(3, animal.getNome());
            stmt.execute();
            stmt.close();

        } catch (SQLException u) {
            throw new RuntimeException(u);
        }
    }

    public Animal getAnimal(int dono) {
        Animal animal = new Animal();
        PreparedStatement stmt = null;
        ResultSet rs = null;
        String sql = "select * from animal where dono = ?";
        try {
            stmt = con.prepareStatement(sql);
            stmt.setInt(1, dono);
            rs = stmt.executeQuery();
            if (rs.next()) {
                animal.setDono(dono);
                animal.setIdAnimal(rs.getInt("id_animal"));
                animal.setDono(rs.getInt("dono"));

            }
            stmt.close();
        } catch (SQLException u) {
            throw new RuntimeException(u);
        }
        return animal;
    }

}
