package br.com.projeto.dao;

import br.com.projeto.bean.ProdutoBean;
import br.com.projeto.database.Conexao;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * @author Logan Michel
 */
public class ProdutoDAO {
  
    public int adicionar (ProdutoBean produto){
        String sql= "INSERT INTO produtos (nome, preco) VALUES" + "(?, ?)";
        
        try {
            PreparedStatement ps = Conexao.obterConexao().prepareStatement(sql,PreparedStatement.RETURN_GENERATED_KEYS);
            ps.setString(1, produto.getNome());
            ps.setFloat(2, produto.getPreco());
            ps.execute();
            ResultSet resultSet = ps.getGeneratedKeys();
            if(resultSet.next()){
                return resultSet.getInt(1);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally{
            Conexao.fecharConexao();
        }
        return -1;
    }
}
