/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.projeto.dao;

import br.com.projeto.bean.CategoriaBean;
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
public class CategoriaDAOTest {
    

    /**
     * Test of obterTodosParaSelect2 method, of class CategoriaDAO.
     */
    @Test
    public void testObterTodosParaSelect2() {
        Conexao.truncate();
        
        List<CategoriaBean> categorias = new ArrayList<>();
        CategoriaBean categoria = new CategoriaBean();
        categoria.setNome("Elêtronicos");
        
        int cod = new CategoriaDAO().adicionar(categoria);
        categoria.setId(cod);
        
        assertEquals(cod, 1);
    }

    /**
     * Test of obterTodos method, of class CategoriaDAO.
     */
    @Test
    public void testObterTodos() {
        Conexao.truncate();
        
        List<CategoriaBean> categorias = new ArrayList<>();
        CategoriaBean categoria = new CategoriaBean();
        categoria.setNome("Elêtronicos");
        
        int cod = new CategoriaDAO().adicionar(categoria);
        categoria.setId(cod);
        
        assertEquals(cod, 1);
    }

    /**
     * Test of adicionar method, of class CategoriaDAO.
     */
    @Test
    public void testAdicionar() {
        Conexao.truncate();
        
        List<CategoriaBean> categorias = new ArrayList<>();
        CategoriaBean categoria = new CategoriaBean();
        categoria.setNome("Elêtronicos");
        
        int cod = new CategoriaDAO().adicionar(categoria);
        categoria.setId(cod);
        
        assertEquals(cod, 1);
    }

    /**
     * Test of excluir method, of class CategoriaDAO.
     */
    @Test
    public void testExcluir() {
        Conexao.truncate();
        
        List<CategoriaBean> categorias = new ArrayList<>();
        CategoriaBean categoria = new CategoriaBean();
        categoria.setNome("Elêtronicos");
        
        int cod = new CategoriaDAO().adicionar(categoria);
        categoria.setId(cod);
        
        categoria.setNome("Elêtronicos");
        
        new CategoriaDAO().excluir(cod);
    }

    /**
     * Test of editar method, of class CategoriaDAO.
     */
    @Test
    public void testEditar() {
        Conexao.truncate();
        
        List<CategoriaBean> categorias = new ArrayList<>();
        CategoriaBean categoria = new CategoriaBean();
        categoria.setNome("Elêtronicos");
        
        int cod = new CategoriaDAO().adicionar(categoria);
        categoria.setId(cod);
        
        categoria.setNome("Acessórios");
        
        new CategoriaDAO().editar(categoria);
    }

    /**
     * Test of obterVisao method, of class CategoriaDAO.
     */
    @Test
    public void testObterVisao() {
        Conexao.truncate();
        
        Conexao.truncate();
        
        List<CategoriaBean> categorias = new ArrayList<>();
        CategoriaBean categoria = new CategoriaBean();
        categoria.setNome("Elêtronicos");
        
        int cod = new CategoriaDAO().adicionar(categoria);
        categoria.setId(cod);
        
        assertEquals(cod, 1);
    }
    
}
