package br.com.petShopPrado.dao;

import br.com.petShopPrado.connection.ConnectionFactory;
import br.com.petShopPrado.model.Servico;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class ServicoDAO {

    Connection con;

    public ServicoDAO() {
        con = ConnectionFactory.getConnection();
    }

    public void cadastrarServico(Servico servico) {
        
        PreparedStatement stmt = null;
        String sql = "INSERT INTO servico (animal, descricao, data_servico, preco) VALUES (?, ?, ?, ?)";
        try {

            stmt = con.prepareStatement(sql);
            stmt.setInt(1, servico.getAnima().getIdAnimal());
            stmt.setString(2, servico.getDescricao());
            stmt.setString(3, servico.getDataAgendamento());
            stmt.setDouble(4, servico.getPrecoServico());
            stmt.execute();
            stmt.close();

        } catch (SQLException u) {
            throw new RuntimeException(u);
        }
    }

}
