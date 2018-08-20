package br.com.projeto.dao;

import br.com.projeto.bean.CategoriaBean;
import br.com.projeto.database.Conexao;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Gabriel Budke
 */
public class CategoriaDAO {

    public int adicionar(CategoriaBean categoria) {
        String sql = "INSERT INTO categorias(nome) VALUES (?)";

        try {
            PreparedStatement ps = Conexao.obterConexao().prepareStatement(sql,
                    PreparedStatement.RETURN_GENERATED_KEYS);
            ps.setString(1, categoria.getNome());
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

    public boolean excluir(int id) {
        String sql = "DELETE FROM categorias WHERE id = ?";

        try {
            PreparedStatement ps = Conexao.obterConexao().prepareStatement(sql);
            ps.setInt(1, id);
            return ps.executeUpdate() == 1;
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            Conexao.obterConexao();
        }

        return false;

    }
    
    public boolean editar(CategoriaBean categoria){
        String sql = "UPDATE categorias SET nome = ? WHERE id = ?";
        
        try {
            PreparedStatement ps = Conexao.obterConexao().prepareStatement(sql);
            ps.setString(1, categoria.getNome());
            ps.setInt(2, categoria.getId());
            return ps.executeUpdate() == 1;
            
        } catch (SQLException e) {
            e.printStackTrace();
        }finally{
            Conexao.fecharConexao();
        }
        
        return false;
        
    }

}
