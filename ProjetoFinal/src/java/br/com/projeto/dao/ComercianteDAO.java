package br.com.projeto.dao;

import br.com.projeto.bean.ComercianteBean;
import br.com.projeto.database.Conexao;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;  

/**
 * @author Gabriel Budke
 */
public class ComercianteDAO {

    public int adicionar(ComercianteBean comerciante) {

        String sql = "INSERT INTO comerciantes (login, senha, nome, cpf, email, telefone, rua, bairro, cidade, estado, numero) VALUES"
                + "(?,?,?,?,?,?,?,?,?,?,?)";

        try {
            PreparedStatement ps = Conexao.obterConexao().prepareStatement(sql,
                    PreparedStatement.RETURN_GENERATED_KEYS);
            int posicao = 1;
            ps.setString(posicao++, comerciante.getLogin());
            ps.setString(posicao++, comerciante.getSenha());
            ps.setString(posicao++, comerciante.getNome());
            ps.setString(posicao++, comerciante.getCpf());
            ps.setString(posicao++, comerciante.getEmail());
            ps.setString(posicao++, comerciante.getTelefone());
            ps.setString(posicao++, comerciante.getRua());
            ps.setString(posicao++, comerciante.getBairro());
            ps.setString(posicao++, comerciante.getCidade());
            ps.setString(posicao++, comerciante.getEstado());
            ps.setString(posicao++, comerciante.getNumero());
            ps.execute();
            ResultSet resultSet = ps.getGeneratedKeys();
            if (resultSet.next()) {
                return resultSet.getInt(1);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            Conexao.fecharConexao();
        }

        return -1;

    }

}
