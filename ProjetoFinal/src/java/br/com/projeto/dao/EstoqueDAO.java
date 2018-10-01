package br.com.projeto.dao;

import br.com.projeto.bean.EstoqueBean;
import br.com.projeto.bean.ProdutoBean;
import br.com.projeto.database.Conexao;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 * @author Logan Michel
 */
public class EstoqueDAO {

    //Método para obter todos para DataTable
    public List<HashMap<String, Object>> obterTodosParaDataTable() {
        List<HashMap<String, Object>> estoques = new ArrayList<>();
        String sql = "SELECT * FROM estoque e JOIN produtos p ON (p.id = e.id_produto)";

        try {
            Statement st = Conexao.obterConexao().createStatement();
            st.execute(sql);
            ResultSet resultSet = st.getResultSet();
            while (resultSet.next()) {
                HashMap<String, Object> estoque = new HashMap<>();
                estoque.put("id", resultSet.getInt("e.id"));
                estoque.put("id_produto", resultSet.getInt("p.nome"));
                estoque.put("quantidade", resultSet.getInt("e.quantidade"));
                estoque.put("tipo", resultSet.getInt("e.tipo"));
                estoques.add(estoque);
            }
        } catch (SQLException e) {
            Logger.getLogger(EstoqueDAO.class.getName()).log(Level.SEVERE, null, e);

        } finally {
            Conexao.fecharConexao();
        }

        return estoques;
    }

    //Método para obter todos do banco de dados
    public List<EstoqueBean> obterTodos() {
        List<EstoqueBean> estoques = new ArrayList<>();
        String sql = "SELECT e.id, e.tipo, e.id_produto, p.preco, p.nome as 'produto', e.quantidade AS 'quantidade' FROM estoque e JOIN produtos p ON(p.id = e.id_produto)";
        try {

            Statement st = Conexao.obterConexao().createStatement();
            st.execute(sql);
            ResultSet resultSet = st.getResultSet();
            while (resultSet.next()) {
                EstoqueBean estoque = new EstoqueBean();
                estoque.setId(resultSet.getInt("e.id"));
                estoque.setIdProduto(resultSet.getInt("e.id_produto"));
                estoque.setQuantidade(resultSet.getInt("quantidade"));
                estoque.setTipo(resultSet.getString("e.tipo"));

                ProdutoBean produto = new ProdutoBean();
                produto.setId(estoque.getIdProduto());
                produto.setNome(resultSet.getString("produto"));
                produto.setPreco(resultSet.getFloat("p.preco"));

                estoque.setProduto(produto);

                estoques.add(estoque);

            }

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            Conexao.fecharConexao();
        }
        return estoques;

    }
    public List<EstoqueBean> obterTodosAtualizado() {
        List<EstoqueBean> estoques = new ArrayList<>();
        String sql = "SELECT p.nome as 'produto', SUM(e.quantidade) - \n" +
"IF(\n" +
"(SELECT SUM(e1.quantidade) as 'quantidade_saida' FROM estoque e1 WHERE e1.id_produto = e.id_produto AND e1.tipo LIKE '%Saída%')  IS NULL,\n" +
"0, (SELECT SUM(e1.quantidade) as 'quantidade' FROM estoque e1 WHERE e1.id_produto = e.id_produto AND e1.tipo LIKE '%Saída%'))\n" +
"as 'quantidade'\n" +
"FROM estoque e\n" +
"JOIN produtos p ON(p.id = e.id_produto) WHERE e.tipo LIKE '%Entrada%'\n" +
"GROUP BY e.id_produto;";
        try {

            Statement st = Conexao.obterConexao().createStatement();
            st.execute(sql);
            ResultSet resultSet = st.getResultSet();
            while (resultSet.next()) {
                EstoqueBean estoque = new EstoqueBean();
                estoque.setQuantidade(resultSet.getInt("quantidade"));

                ProdutoBean produto = new ProdutoBean();
                produto.setId(estoque.getIdProduto());               produto.setNome(resultSet.getString("produto"));

                estoque.setProduto(produto);

                estoques.add(estoque);

            }

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            Conexao.fecharConexao();
        }
        return estoques;

    }


    //Método adicionar ao banco de dados
    public int adicionar(EstoqueBean estoque) {
        String sql = "INSERT INTO estoque (id_produto, tipo, quantidade) VALUES(?,?,?)";

        try {

            PreparedStatement ps = Conexao.obterConexao().prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS);
            ps.setInt(1, estoque.getIdProduto());
            ps.setString(2, estoque.getTipo());
            ps.setInt(3, estoque.getQuantidade());
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

    //Método de excluir no banco de dados
    public boolean excluir(int id) {
        String sql = "DELETE FROM estoque WHERE id = ?";
        try {
            PreparedStatement ps = Conexao.obterConexao().prepareStatement(sql);
            ps.setInt(1, id);
            return ps.executeUpdate() == 1;
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            Conexao.fecharConexao();
        }
        return false;
    }

    //Método de editar no banco de dados
    public boolean editar(EstoqueBean estoque) {
        String sql = "UPDATE estoque SET id_produto = ?, tipo = ?, quantidade = ? WHERE id = ?";
        try {
            PreparedStatement ps = Conexao.obterConexao().prepareStatement(sql);
            ps.setInt(1, estoque.getIdProduto());
            ps.setString(2, estoque.getTipo());
            ps.setInt(3, estoque.getQuantidade());
            return ps.executeUpdate() == 1;
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            Conexao.fecharConexao();
        }
        return false;
    }

    //Método de obter no estoque pelo seu ID
    public EstoqueBean obterPeloId(int id) {
        String sql = "SELECT * FROM estoque WHERE id = ?";
        try {
            PreparedStatement ps = Conexao.obterConexao().prepareStatement(sql);
            ps.setInt(1, id);
            ps.execute();
            ResultSet resultSet = ps.getResultSet();
            if (resultSet.next()) {
                EstoqueBean estoque = new EstoqueBean();
                estoque.setId(id);
                estoque.setIdProduto(resultSet.getInt("idProduto"));
                estoque.setTipo(resultSet.getString("tipo"));
                estoque.setQuantidade(resultSet.getInt("quantidade"));
                return estoque;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            Conexao.fecharConexao();
        }
        return null;
    }

    //Método de obter produto  quando coluna 'tipo' tiver valor 'Saida'
    public List<EstoqueBean> obterSaida() {
        List<EstoqueBean> estoques = new ArrayList<>();
        String sql = "SELECT e.tipo, p.nome AS 'produto', e.quantidade AS 'quantidade' FROM estoque e JOIN produtos p ON(p.id = e.id_produto) WHERE e.tipo LIKE '%Saida%'";
        try {

            Statement st = Conexao.obterConexao().createStatement();
            st.execute(sql);
            ResultSet resultSet = st.getResultSet();
            while (resultSet.next()) {
                EstoqueBean estoque = new EstoqueBean();
                estoque.setId(resultSet.getInt("e.id"));
                estoque.setIdProduto(resultSet.getInt("e.id_produto"));
                estoque.setQuantidade(resultSet.getInt("quantidade"));
                estoque.setTipo(resultSet.getString("e.tipo"));

                ProdutoBean produto = new ProdutoBean();
                produto.setId(estoque.getIdProduto());
                produto.setNome(resultSet.getString("produto"));
                produto.setPreco(resultSet.getFloat("p.preco"));

                estoque.setProduto(produto);

                estoques.add(estoque);

            }

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            Conexao.fecharConexao();
        }
        return estoques;

    }

    //Método de obter produto com saida para grafico
    public HashMap<String, Object> obterProduto() {
        List<Object> produtoNomes = new ArrayList<>();
        List<Object> produtoQuantidades = new ArrayList<>();
        String sql = "SELECT e.tipo, p.nome AS 'produto', e.quantidade AS 'quantidade' FROM estoque e JOIN produtos p ON(p.id = e.id_produto)\n" +
"WHERE e.tipo LIKE '%Saida%'";
        
        try{
            Statement st = Conexao.obterConexao().createStatement();
            st.execute(sql);
            ResultSet resultSet = st.getResultSet();
            while(resultSet.next()){
                produtoNomes.add(resultSet.getString("produto"));
                produtoQuantidades.add(resultSet.getInt("quantidade"));
            }
            
        }catch(SQLException e){
            e.printStackTrace();
        }
        
        HashMap<String, Object> produtos = new HashMap<>();
        produtos.put("produtos", produtoNomes);
        produtos.put("quantidades", produtoQuantidades);
        return produtos;
        
        
        
        
    }

}
