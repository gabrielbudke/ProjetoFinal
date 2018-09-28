package br.com.projeto.database;

import com.mysql.jdbc.Statement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conexao {

    private static final String HOST = "jdbc:mysql://localhost/projeto_final";
    private static String USER = "root";
    private static String PASSWORD = "";
    private static final String CLASS = "com.mysql.jdbc.Driver";
    private static Connection conexao;

    public static Connection obterConexao() {
        try {
            Class.forName(CLASS);

            /*String dbName = System.getProperty("RDS_DB_NAME");
            USER = System.getProperty("RDS_USERNAME");
            PASSWORD = System.getProperty("RDS_PASSWORD");
            String hostname = System.getProperty("RDS_HOSTNAME");
            String port = System.getProperty("RDS_PORT");*/
            conexao = DriverManager.getConnection(HOST, USER, PASSWORD);
            return conexao;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public static void fecharConexao() {
        try {
            conexao.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* public static void main(String[] args) {
         Conexao.obterConexao();
    }
     */
    
    public static void truncate() {
        obterConexao();
        if (conexao != null) {
            try {
                Statement st = (Statement) conexao.createStatement();
                st.addBatch("SET FOREIGN_KEY_CHECKS = 0;");
                st.addBatch("TRUNCATE TABLE funcionarios;");
                st.addBatch("TRUNCATE TABLE fornecedores;");
                st.addBatch("TRUNCATE TABLE categorias;");
                st.addBatch("TRUNCATE TABLE produtos;");
                st.addBatch("TRUNCATE TABLE estoque;");
                st.addBatch("SET FOREIGN_KEY_CHECKS = 1;");
                st.executeBatch();
            } catch (SQLException e) {
                e.printStackTrace();
            } finally {
                fecharConexao();
            }
        }
    }
    
}




