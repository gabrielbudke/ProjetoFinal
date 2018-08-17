package br.com.projeto.dao;

import br.com.projeto.bean.ProdutoBean;
import br.com.projeto.database.Conexao;
import java.sql.PreparedStatement;

/**
 * @author Alunos
 */
public class ProdutoDAO {
  
    public int adicionar (ProdutoBean produto){
        String sql= "INSERT INTO produtos (nome, preco) VALUES" + "(?, ?)";
        
        try {
            PreparedStatement ps = Conexao.obterConexao().prepareStatement(sql,PreparedStatement.RETURN_GENERATED_KEYS);
            ps.setString(1, produto.getNome());
            ps.setFloat(2, produto.getPreco());
        } catch (Exception e) {
        }
        
        
    }
}
