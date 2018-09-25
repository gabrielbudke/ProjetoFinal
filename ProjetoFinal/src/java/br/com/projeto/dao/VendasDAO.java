/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.projeto.dao;

import br.com.projeto.bean.ProdutoBean;
import br.com.projeto.bean.VendasBean;
import br.com.projeto.database.Conexao;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author patrick
 */
public class VendasDAO {
    
       public List<VendasBean> obterTodos() {
        List<VendasBean> vendas = new ArrayList<>();
        String sql = "SELECT * FROM produtos_saida ps JOIN produtos p ON (p.id = ps.id_produto)";
        try {
            Statement st = Conexao.obterConexao().createStatement();
            st.execute(sql);
            ResultSet resultSet = st.getResultSet();
            while (resultSet.next()) {
                VendasBean venda = new VendasBean();
                venda.setId(resultSet.getInt("ps.id"));
                venda.setIdProduto(resultSet.getInt("produto"));
                venda.setQuantidade(resultSet.getInt("ps.quantidade"));

                ProdutoBean produto = new ProdutoBean();
                produto.setId(resultSet.getInt("p.id"));
                produto.setNome(resultSet.getString("p.nome"));
                
                vendas.add(venda);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            Conexao.fecharConexao();
        }
        return vendas;

    }
    
      public int adicionar(VendasBean venda) {
        String sql = "INSERT INTO produtos_saida (id_produto, quantidade) VALUES(?,?)";
        try {
            PreparedStatement ps = Conexao.obterConexao().prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS);
            ps.setInt(1, venda.getIdProduto());
            ps.setInt(2, venda.getQuantidade());
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
