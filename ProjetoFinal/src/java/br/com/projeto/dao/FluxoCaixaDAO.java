package br.com.projeto.dao;

import br.com.projeto.bean.FluxoCaixaBean;
import br.com.projeto.database.Conexao;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * @author logan Michel
 */
public class FluxoCaixaDAO {
    
    public int adicionar(FluxoCaixaBean fluxoCaixa){
        String sql = "INSERT INTO fluxoCaixa ( totalRecebido, totalSaida, saldoInicial, saldoFinal)";
        try {
            PreparedStatement ps = Conexao.obterConexao().prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS);
            ps.setDouble(1, fluxoCaixa.getTotalRecebido());
            ps.setDouble(2, fluxoCaixa.getTotalSaida());
            ps.setDouble(3, fluxoCaixa.getSaldoInicial());
            ps.setDouble(4, fluxoCaixa.getSaldoFinal());
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
    
}
