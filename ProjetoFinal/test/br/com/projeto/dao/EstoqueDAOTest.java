/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.projeto.dao;

import br.com.projeto.bean.EstoqueBean;
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
 * @author Patrick Nacimento
 */
public class EstoqueDAOTest {
    
    public void testObterTodosParaDataTable() {
        Conexao.truncate();
        
        List<EstoqueBean> estoques = new ArrayList<>();
        EstoqueBean estoque = new EstoqueBean();
        estoque.setQuantidade(23);
        estoque.setTipo("Entrada");
        
        int cod = new EstoqueDAO().adicionar(estoque);
        estoque.setId(cod);
        
        assertEquals(cod, 1);
    }

    /**
     * Test of obterTodos method, of class EstoqueDAO.
     */
    @Test
    public void testObterTodos() {
        Conexao.truncate();
        
        List<EstoqueBean> estoques = new ArrayList<>();
        EstoqueBean estoque = new EstoqueBean();
        estoque.setQuantidade(23);
        estoque.setTipo("Entrada");
        
        int cod = new EstoqueDAO().adicionar(estoque);
        estoque.setId(cod);
        
        assertEquals(cod, 1);
    }

    /**
     * Test of adicionar method, of class EstoqueDAO.
     */
    @Test
    public void testAdicionar() {
        Conexao.truncate();
        
        List<EstoqueBean> estoques = new ArrayList<>();
        EstoqueBean estoque = new EstoqueBean();
        estoque.setQuantidade(23);
        estoque.setTipo("Entrada");
        
        int cod = new EstoqueDAO().adicionar(estoque);
        estoque.setId(cod);
        
        assertEquals(cod, 1);
    }

    /**
     * Test of excluir method, of class EstoqueDAO.
     */
    @Test
    public void testExcluir() {
        Conexao.truncate();
        
        List<EstoqueBean> estoques = new ArrayList<>();
        EstoqueBean estoque = new EstoqueBean();
        estoque.setQuantidade(23);
        estoque.setTipo("Entrada");
        
        int cod = new EstoqueDAO().adicionar(estoque);
        estoque.setId(cod);
        
        estoque.setQuantidade(23);
        
        new EstoqueDAO().excluir(cod);
    }

    /**
     * Test of editar method, of class EstoqueDAO.
     */
    @Test
    public void testEditar() {
        Conexao.truncate();
        
        List<EstoqueBean> estoques = new ArrayList<>();
        EstoqueBean estoque = new EstoqueBean();
        estoque.setQuantidade(23);
        estoque.setTipo("Entrada");
        
        int cod = new EstoqueDAO().adicionar(estoque);
        estoque.setId(cod);
        
        estoque.setQuantidade(24);
        
        new EstoqueDAO().editar(estoque);
    }

    /**
     * Test of obterPeloId method, of class EstoqueDAO.
     */
    @Test
    public void testObterPeloId() {
        Conexao.truncate();
        
        List<EstoqueBean> estoques = new ArrayList<>();
        EstoqueBean estoque = new EstoqueBean();
        estoque.setQuantidade(23);
        estoque.setTipo("Entrada");
        
        int cod = new EstoqueDAO().adicionar(estoque);
        estoque.setId(cod);
        
        assertEquals(cod, 1);
    }

    /**
     * Test of obterSaida method, of class EstoqueDAO.
     */
    @Test
    public void testObterSaida() {
        Conexao.truncate();
        
        List<EstoqueBean> estoques = new ArrayList<>();
        EstoqueBean estoque = new EstoqueBean();
        estoque.setQuantidade(23);
        estoque.setTipo("Entrada");
        
        int cod = new EstoqueDAO().adicionar(estoque);
        estoque.setId(cod);
        
        assertEquals(cod, 1);
    }

    /**
     * Test of obterProduto method, of class EstoqueDAO.
     */
    @Test
    public void testObterProduto() {
        Conexao.truncate();
        
        List<EstoqueBean> estoques = new ArrayList<>();
        EstoqueBean estoque = new EstoqueBean();
        estoque.setQuantidade(23);
        estoque.setTipo("Entrada");
        
        int cod = new EstoqueDAO().adicionar(estoque);
        estoque.setId(cod);
        
        assertEquals(cod, 1);
    }
    
}
