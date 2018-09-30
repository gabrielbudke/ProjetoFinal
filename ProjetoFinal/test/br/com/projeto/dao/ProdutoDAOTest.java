/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.projeto.dao;

import br.com.projeto.bean.ProdutoBean;
import br.com.projeto.database.Conexao;
import java.util.ArrayList;
import java.util.HashMap;
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
public class ProdutoDAOTest {
    
    /**
     * Test of obterTodos method, of class ProdutoDAO.
     */
    @Test
    public void testObterTodos() {
        Conexao.truncate();
        
        List<ProdutoBean> produtos = new ArrayList<>();
        ProdutoBean produto = new ProdutoBean();
        produto.setNome("Cama");
        produto.setPreco(2.33);
        
        int cod = new ProdutoDAO().adicionar(produto);
        produto.setId(cod);
        
        assertEquals(cod, 1);
    }

    /**
     * Test of adicionar method, of class ProdutoDAO.
     */
    @Test
    public void testAdicionar() {
        Conexao.truncate();
    }

    /**
     * Test of excluir method, of class ProdutoDAO.
     */
    @Test
    public void testExcluir() {
        Conexao.truncate();
    }

    /**
     * Test of editar method, of class ProdutoDAO.
     */
    @Test
    public void testEditar() {
        Conexao.truncate();
    }

    /**
     * Test of obterPeloId method, of class ProdutoDAO.
     */
    @Test
    public void testObterPeloId() {
        Conexao.truncate();
    }

    /**
     * Test of obterTodosParaDataTable method, of class ProdutoDAO.
     */
    @Test
    public void testObterTodosParaDataTable() {
        Conexao.truncate();
    }
    
}
