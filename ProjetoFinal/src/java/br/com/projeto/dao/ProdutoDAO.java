package br.com.projeto.dao;

import br.com.projeto.bean.ProdutoBean;
import br.com.projeto.database.Conexao;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 * @author Logan Michel
 */
public class ProdutoDAO {
    
    public List<ProdutoBean> obterTodos(){
        List<ProdutoBean> produtos = new ArrayList<>();
        String sql = "SELECT * FROM produtos";
        try {
            Statement st = Conexao.obterConexao().createStatement();
            st.execute(sql);
            ResultSet resultSet = st.getResultSet();
            while (resultSet.next()) {
                ProdutoBean produto = new ProdutoBean();
                produto.setId(resultSet.getInt("id"));
                produto.setNome(resultSet.getString("nome"));
                produto.setPreco(resultSet.getFloat("preco"));
                produtos.add(produto);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }finally{
            Conexao.fecharConexao();
        }
        return produtos;
    }
  
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
    
    public boolean excluir(int id){
        String sql = "DELETE FROM produtos WHERE id =?";
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
    
    public boolean editar(ProdutoBean produto){
        String sql = "UPDATE produtos SET nome = ?, preco = ? WHERE id = ?";
        try {
            PreparedStatement ps = Conexao.obterConexao().prepareStatement(sql);
            ps.setString(1, produto.getNome());
            ps.setFloat(2, produto.getPreco());
            return ps.executeUpdate() == 1;
        } catch (SQLException e) {
            e.printStackTrace();
        }finally{
            Conexao.fecharConexao();
        }
        return false;
    }
    
    public ProdutoBean obterPeloId(int id){
        String sql = "SELECT * FROM produtos WHERE id = ?";
        try {
            PreparedStatement ps = Conexao.obterConexao().prepareStatement(sql);
            ps.setInt(1, id);
            ps.execute();
            ResultSet resultSet = ps.getResultSet();
            if (resultSet.next()){
                ProdutoBean produto = new ProdutoBean();
                produto.setId(id);
                produto.setNome(resultSet.getString("nome"));
                produto.setPreco(resultSet.getFloat("preco"));
                return produto;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally{
            Conexao.fecharConexao();
        }
        return null;
    }
    
}
