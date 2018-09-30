/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.projeto.dao;

import br.com.projeto.bean.FornecedorBean;
import br.com.projeto.database.Conexao;
import java.util.ArrayList;
import java.util.List;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author patri
 */
public class FornecedorDAOTest {
    
    /**
     * Test of obterTodos method, of class FornecedorDAO.
     */
    @Test
    public void testObterTodos() {
        Conexao.truncate();
        
        List<FornecedorBean> fornecedores = new ArrayList<>();
        FornecedorBean fornecedor = new FornecedorBean();
        fornecedor.setNome("Arrox");
        fornecedor.setCnpj("99999999999999");
        fornecedor.setEmail("arrox@a.com");
        fornecedor.setTelefone("4733334444");
        
        int cod = new FornecedorDAO().adicionar(fornecedor);
        fornecedor.setId(cod);
        
        assertEquals(cod, 1);
        
        
    }

    /**
     * Test of adicionar method, of class FornecedorDAO.
     */
    @Test
    public void testAdicionar() {
        Conexao.truncate();
        
        List<FornecedorBean> fornecedores = new ArrayList<>();
        FornecedorBean fornecedor = new FornecedorBean();
        fornecedor.setNome("Arrox");
        fornecedor.setCnpj("99999999999999");
        fornecedor.setEmail("arrox@a.com");
        fornecedor.setTelefone("4733334444");
        
        int cod = new FornecedorDAO().adicionar(fornecedor);
        fornecedor.setId(cod);
        
        assertEquals(cod, 1);
    }

    /**
     * Test of excluir method, of class FornecedorDAO.
     */
    @Test
    public void testExcluir() {
        Conexao.truncate();
        
        List<FornecedorBean> fornecedores = new ArrayList<>();
        FornecedorBean fornecedor = new FornecedorBean();
        fornecedor.setNome("Arrox");
        fornecedor.setCnpj("99999999999999");
        fornecedor.setEmail("arrox@a.com");
        fornecedor.setTelefone("4733334444");
        
        int cod = new FornecedorDAO().adicionar(fornecedor);
        fornecedor.setId(cod);
        
        fornecedor.setNome("Arrox");
        
        new FornecedorDAO().excluir(cod);
        
    }

    /**
     * Test of obterPeloId method, of class FornecedorDAO.
     */
    @Test
    public void testObterPeloId() {
        Conexao.truncate();
    }

    /**
     * Test of editar method, of class FornecedorDAO.
     */
    @Test
    public void testEditar() {
        Conexao.truncate();
        
        List<FornecedorBean> fornecedores = new ArrayList<>();
        FornecedorBean fornecedor = new FornecedorBean();
        fornecedor.setNome("Arrox");
        fornecedor.setCnpj("99999999999999");
        fornecedor.setEmail("arrox@a.com");
        fornecedor.setTelefone("4733334444");
        
        int cod = new FornecedorDAO().adicionar(fornecedor);
        fornecedor.setId(cod);
        
        fornecedor.setNome("Arroz");
        
        new FornecedorDAO().editar(fornecedor);
    }
    
}
