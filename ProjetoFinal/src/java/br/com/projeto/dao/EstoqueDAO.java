package br.com.projeto.dao;

import br.com.projeto.bean.EstoqueBean;
import br.com.projeto.database.Conexao;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * @author Logan Michel
 */
public class EstoqueDAO {
    
    public int adicionar(EstoqueBean estoque){
        String sql = "INSERT INTO estoque (id_produto, tipo, quantidade) VALUES(?,?,?)";
        
        try {
            
            PreparedStatement ps = Conexao.obterConexao().prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS);
            ps.setInt(1, estoque.getIdProduto());
            ps.setString(2, estoque.getTipo());
            ps.setInt(3, estoque.getQuantidade());
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
    
    public boolean excluir(int id){
        String sql = "DELETE FROM estoque WHERE id = ?";
        try {
            PreparedStatement ps = Conexao.obterConexao().prepareStatement(sql);
            ps.setInt(1, id);
            return ps.executeUpdate() == 1;
        } catch (SQLException e) {
            e.printStackTrace();
        }finally{
            Conexao.fecharConexao();
        }
        return false;
    }
    
    public boolean editar(EstoqueBean estoque){
        String sql = "UPDATE estoque SET id_produto = ?, tipo = ?, quantidade = ? WHERE id = ?";
        try {
            PreparedStatement ps
        } catch (Exception e) {
        }
    }
}
