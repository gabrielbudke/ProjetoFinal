package br.com.projeto.dao;

import br.com.projeto.bean.EnderecoFuncionarioBean;
import br.com.projeto.bean.FuncionarioBean;
import br.com.projeto.database.Conexao;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Patrick
 */
public class EnderecoFuncionarioDAO {
    
    public List<EnderecoFuncionarioBean> obterTodos(){
        List<EnderecoFuncionarioBean> enderecoFuncionarios = new ArrayList<>();
    String sql = "SELECT id, idFuncionario, cep, estado, rua, numero, bairro, cidade";
    try{
        Statement st = Conexao.obterConexao().createStatement();
        st.execute(sql);
        ResultSet resultSet = st.getResultSet();
        while(resultSet.next()){
            EnderecoFuncionarioBean enderecoFuncionario = new EnderecoFuncionarioBean();
            enderecoFuncionario.setId(resultSet.getInt("id"));
            enderecoFuncionario.setIdFuncionario(resultSet.getInt("idFuncionario"));
            enderecoFuncionario.setCep(resultSet.getString("cep"));
            enderecoFuncionario.setEstado(resultSet.getString("estado"));
            enderecoFuncionario.setRua(resultSet.getString("rua"));
            enderecoFuncionario.setNumero(resultSet.getString("numero"));
            enderecoFuncionario.setBairro(resultSet.getString("bairro"));
            enderecoFuncionario.setCidade(resultSet.getString("cidade"));
            enderecoFuncionarios.add(enderecoFuncionario);
            
        }
        
    }catch (SQLException e){
        e.printStackTrace();
    }finally{
        Conexao.fecharConexao();
    }
    return enderecoFuncionarios;
    
    }
    
    public int adicionar(EnderecoFuncionarioBean enderecoFuncionario){
        String sql = "INSERT INTO endereço_funcionarios (idFuncionario, cep, estado, rua, numero, bairro, cidade) VALUES (?,?,?,?,?,?,?)";
        try{
            PreparedStatement ps = (PreparedStatement) Conexao.obterConexao().prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS);
            int quantidade = 1;
            ps.setInt(quantidade++, enderecoFuncionario.getIdFuncionario());
            ps.setString(quantidade++, enderecoFuncionario.getCep());
            ps.setString(quantidade++, enderecoFuncionario.getEstado());
            ps.setString(quantidade++, enderecoFuncionario.getRua());
            ps.setString(quantidade++, enderecoFuncionario.getNumero());
            ps.setString(quantidade++, enderecoFuncionario.getBairro());
            ps.setString(quantidade++, enderecoFuncionario.getCidade());
            ps.execute();
            ResultSet resultSet = ps.getGeneratedKeys();
            if (resultSet.next()) {
                return resultSet.getInt(1);
            }
            
        }catch (SQLException e){
            e.printStackTrace();
        }finally{
            Conexao.fecharConexao();
        }
            return -1;
    }
    
     public boolean excluir(int id) {

        String sql = "DELETE FROM endereço_funcionarios WHERE id = ?";
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
     
     public EnderecoFuncionarioBean obterPeloId(int id) {
        String sql = "SELECT * FROM endereço_funcionarios WHERE id= ?";
        try {
            PreparedStatement ps = Conexao.obterConexao().prepareStatement(sql);
            ps.setInt(1, id);
            ps.execute();
            ResultSet resultSet = ps.getResultSet();
            if (resultSet.next()) {
                EnderecoFuncionarioBean enderecoFuncionario = new EnderecoFuncionarioBean();
                enderecoFuncionario.setId(id);
                enderecoFuncionario.setIdFuncionario(id);
                enderecoFuncionario.setCep(resultSet.getString("cep"));
                enderecoFuncionario.setEstado(resultSet.getString("estado"));
                enderecoFuncionario.setRua(resultSet.getString("rua"));
                enderecoFuncionario.setNumero(resultSet.getString("numero"));
                enderecoFuncionario.setBairro(resultSet.getString("bairro"));
                enderecoFuncionario.setCidade(resultSet.getString("cidade"));
                return enderecoFuncionario;
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            Conexao.fecharConexao();
        }
        return null;
    }
     
     public boolean editar(EnderecoFuncionarioBean enderecoFuncionario){
         String sql = "UPDATE endereço_funcionarios SET idFuncionario = ?, cep = ?, estado = ?, rua = ?, numero = ?, bairro = ?, cidade = ? WHERE id = ?";
         try{
             PreparedStatement ps = Conexao.obterConexao().prepareStatement(sql);
             ps.setInt(1, enderecoFuncionario.getIdFuncionario());
             ps.setString(2, enderecoFuncionario.getCep());
             ps.setString(3, enderecoFuncionario.getEstado());
             ps.setString(2, enderecoFuncionario.getRua());
             ps.setString(2, enderecoFuncionario.getNumero());
             ps.setString(2, enderecoFuncionario.getBairro());
             ps.setString(2, enderecoFuncionario.getCidade());
             return ps.executeUpdate() == 1;

         }catch (SQLException e){
             e.printStackTrace();
         }finally{
             Conexao.fecharConexao();
         }
         return false;
     }
            
    
}
