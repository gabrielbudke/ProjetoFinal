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

    public ComercianteBean obterPeloId(int id){
        String sql = "SELECT * FROM comerciantes WHERE id = ?;";
        
        try{
            PreparedStatement ps = Conexao.obterConexao().prepareStatement(sql);
            ps.setInt(1, id);
            ps.execute();
            ResultSet resultSet = ps.getResultSet();
            if(resultSet.next()){
                ComercianteBean comerciante = new ComercianteBean();
                comerciante.setId(id);
                comerciante.setNome(resultSet.getString("nome"));
                comerciante.setCpf(resultSet.getString("cpf"));
                comerciante.setEmail(resultSet.getString("email"));
                comerciante.setCep(resultSet.getString("cep"));
                comerciante.setRua(resultSet.getString("rua"));
                comerciante.setBairro(resultSet.getString("bairro"));
                comerciante.setCidade(resultSet.getString("cidade"));
                comerciante.setEstado(resultSet.getString("estado"));
                comerciante.setTelefone(resultSet.getString("telefone"));
                return comerciante;
            }
        }catch(SQLException e){
            e.printStackTrace();
        }finally{
            Conexao.fecharConexao();
        }
        return null;
        
    }
    
    

    public int adicionar(ComercianteBean comerciante) {

        String sql = "INSERT INTO comerciantes (login, senha, nome, cpf, email, telefone, cep, rua, bairro, cidade, estado, numero) VALUES"
                + "(?,?,?,?,?,?,?,?,?,?,?,?)";

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
            ps.setString(posicao++, comerciante.getCep());
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
