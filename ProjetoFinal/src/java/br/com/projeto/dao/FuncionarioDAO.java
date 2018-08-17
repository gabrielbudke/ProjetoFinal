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
    
    /*public List<FuncionarioBean> funcionarios = new ArrayList<>();
    String sql = "SELECT * FROM funcionarios";
    try{
        Statement st = Conexao.obterConexao().createStatement();
        st.execute(sql);
        ResultSet resultSet = st.getResultSet();
        while(resultSet.next()){
            FuncionarioBean funcionario = new FuncionarioBean();
            funcionario.setId(resultSet.getInt("id"));
            funcionario.setLogin(resultSet.getString("login"));
            funcionario.setSenha(resultSet.getString("senha"));
            funcionario.setNome(resultSet.getString("nome"));
            funcionario.setCpf(resultSet.getString("cpf"));
            funcionario.setEmail(resultSet.getString("email"));
            funcionario.setTelefone(resultSet.getString("telefone"));
            funcionario.setRua(resultSet.getString("rua"));
            funcionario.setNumero(resultSet.getString("numero"));
            funcionario.setBairro(resultSet.getString("bairro"));
            funcionario.setCidade(resultSet.getString("cidade"));
            funcionario.setEstado(resultSet.getString("estado"));
            funcionarios.add(funcionario);
 
            }
        
        }catch (SQLException e){
            e.printStackTrace();
        }finally{
            Conexao.fecharConexao();
        }
        return funcionarios;*/
    
    public int adicionar(FuncionarioBean funcionario){
        String sql = "INSERT INTO funcionarios (login, senha, nome, cpf, email, telefone, rua, numero, bairro, cidade, estado) VALUES (?,?,?,?,?,?,?,?,?,?,?)";
        try{
            PreparedStatement ps = (PreparedStatement) Conexao.obterConexao().prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS);
            int quantidade = 1;
            ps.setString(quantidade++, funcionario.getLogin());
            ps.setString(quantidade++, funcionario.getSenha());
            ps.setString(quantidade++, funcionario.getNome());
            ps.setString(quantidade++, funcionario.getCpf());
            ps.setString(quantidade++, funcionario.getEmail());
            ps.setString(quantidade++, funcionario.getTelefone());
            ps.setString(quantidade++, funcionario.getRua());
            ps.setString(quantidade++, funcionario.getNumero());
            ps.setString(quantidade++, funcionario.getBairro());
            ps.setString(quantidade++, funcionario.getCidade());
            ps.setString(quantidade++, funcionario.getEstado());
            
        }catch (SQLException e){
            e.printStackTrace();
        }finally{
            Conexao.fecharConexao();
        }return -1;
    }

}
