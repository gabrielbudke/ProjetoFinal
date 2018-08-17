package br.com.projeto.dao;

import br.com.projeto.bean.FornecedorBean;
import br.com.projeto.database.Conexao;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * @author Gabriel Budke
 */
public class FornecedoreDAO {

    public int adicionar(FornecedorBean fornecedor) {
        String sql = "INSERT INTO fornecedores(nome, cnpj, telefone, email) VALUES (?,?,?,?)";

        try {
            PreparedStatement ps = Conexao.obterConexao().prepareStatement(sql,
                    PreparedStatement.RETURN_GENERATED_KEYS);
            ps.setString(1, fornecedor.getNome());
            ps.setString(2, fornecedor.getCnpj());
            ps.setString(3, fornecedor.getTelefone());
            ps.setString(4, fornecedor.getEmail());
            ps.execute();
            ResultSet resultSet = ps.getResultSet();
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
