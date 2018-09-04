package br.com.projeto.dao;

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
public class FuncionarioDAO {
    
    public List<FuncionarioBean> obterTodos(){
        List<FuncionarioBean> funcionarios = new ArrayList<>();
    String sql = "SELECT * FROM funcionarios";
    try{
        Statement st = Conexao.obterConexao().createStatement();
        st.execute(sql);
        ResultSet resultSet = st.getResultSet();
        while(resultSet.next()){
            FuncionarioBean funcionario = new FuncionarioBean();
            funcionario.setIdComerciante(resultSet.getInt("id_comerciante"));
            funcionario.setId(resultSet.getInt("id"));
            funcionario.setNome(resultSet.getString("nome"));
            funcionario.setCpf(resultSet.getString("cpf"));
            funcionario.setEmail(resultSet.getString("email"));
            funcionario.setTelefone(resultSet.getString("telefone"));
            funcionario.setFuncao(resultSet.getString("funcao"));
            funcionario.setCep(resultSet.getString("cep"));
            funcionario.setEstado(resultSet.getString("estado"));
            funcionario.setRua(resultSet.getString("rua"));
            funcionario.setNumero(resultSet.getString("numero"));
            funcionario.setBairro(resultSet.getString("bairro"));
            funcionario.setCidade(resultSet.getString("cidade"));
            funcionarios.add(funcionario);
 
            }
        
        }catch (SQLException e){
            e.printStackTrace();
        }finally{
            Conexao.fecharConexao();
        }
        return funcionarios;
        
    }
    
    public int adicionar(FuncionarioBean funcionario){
        String sql = "INSERT INTO funcionarios (id_comerciante, nome, cpf, email, telefone, funcao, cep, estado, rua, numero, bairro, cidade) VALUES (?,?,?,?,?,?,?,?,?,?,?,?)";
        try{
            PreparedStatement ps = (PreparedStatement) Conexao.obterConexao().prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS);
            int quantidade = 1;
            ps.setInt(quantidade++, funcionario.getIdComerciante());
            ps.setString(quantidade++, funcionario.getNome());
            ps.setString(quantidade++, funcionario.getCpf());
            ps.setString(quantidade++, funcionario.getEmail());
            ps.setString(quantidade++, funcionario.getTelefone());
            ps.setString(quantidade++, funcionario.getFuncao());
            ps.setString(quantidade++, funcionario.getCep());
            ps.setString(quantidade++, funcionario.getEstado());
            ps.setString(quantidade++, funcionario.getRua());
            ps.setString(quantidade++, funcionario.getNumero());
            ps.setString(quantidade++, funcionario.getBairro());
            ps.setString(quantidade++, funcionario.getCidade());
            ps.execute();
            ResultSet resultSet = ps.getGeneratedKeys();
            if (resultSet.next()) {
                return resultSet.getInt(1);
            }
        }catch (SQLException e){
            e.printStackTrace();
        }finally{
            Conexao.fecharConexao();
        }return -1;
    }
    
    public boolean excluir(int id) {
        String sql = "DELETE FROM alimentos WHERE id = ?";
        try{
            PreparedStatement ps = Conexao.obterConexao().prepareStatement(sql);
            ps.setInt(1, id);
            return ps.executeUpdate() == 1;
            }catch (SQLException e){
            e.printStackTrace();
        }finally{
            Conexao.fecharConexao();
        }
        return false;
        }
    
    public boolean editar(FuncionarioBean funcionario) {
        String sql = "UPDATE funcionarios SET id_comerciante = ?, nome = ?, cpf = ?, email = ?, telefone = ?, funcao = ?, cep = ?, estado = ?, rua = ?, numero = ?, bairro = ?, cidade = ? WHERE id = ?";
        try{
            PreparedStatement ps = Conexao.obterConexao().prepareStatement(sql);
            ps.setInt(1, funcionario.getIdComerciante());
            ps.setString(2, funcionario.getNome());
            ps.setString(3, funcionario.getCpf());
            ps.setString(4, funcionario.getEmail());
            ps.setString(5, funcionario.getTelefone());
            ps.setString(6, funcionario.getFuncao());
            ps.setString(7, funcionario.getCep());
            ps.setString(8, funcionario.getEstado());
            ps.setString(9, funcionario.getRua());
            ps.setString(10, funcionario.getNumero());
            ps.setString(11, funcionario.getBairro());
            ps.setString(12, funcionario.getCidade());
            return ps.executeUpdate() == 1;
        }catch (SQLException e){
            e.printStackTrace();
        }finally{
            Conexao.fecharConexao();
        }
        return false;
    }
    
    public FuncionarioBean obterPeloId(int id){
        String sql = "SELECT id, id_comerciante, nome, cpf, email, telefone, funcao, cep, estado, rua, numero, bairro, cidade FROM funcionarios WHERE id = ?";
        try{
            PreparedStatement ps = Conexao.obterConexao().prepareStatement(sql);
            ps.setInt(1, id);
            ps.execute();
            ResultSet resultSet = ps.getResultSet();
            if (resultSet.next()) {
                FuncionarioBean funcionario = new FuncionarioBean();
                funcionario.setId(id);
                funcionario.setIdComerciante(resultSet.getInt("id_comerciante"));
                funcionario.setNome(resultSet.getString("nome"));
                funcionario.setCpf(resultSet.getString("cpf"));
                funcionario.setEmail(resultSet.getString("email"));
                funcionario.setTelefone(resultSet.getString("telefone"));
                funcionario.setFuncao(resultSet.getString("funcao"));
                funcionario.setCep(resultSet.getString("cep"));
                funcionario.setEstado(resultSet.getString("estado"));
                funcionario.setRua(resultSet.getString("rua"));
                funcionario.setNumero(resultSet.getString("numero"));
                funcionario.setBairro(resultSet.getString("bairro"));
                funcionario.setCidade(resultSet.getString("cidade"));
                return funcionario;
            }
        }catch (Exception e){
            e.printStackTrace();
        }finally{
            Conexao.fecharConexao();
        }
        return null;
    }

}
