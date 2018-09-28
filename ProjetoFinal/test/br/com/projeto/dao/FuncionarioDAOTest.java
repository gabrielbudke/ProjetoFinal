/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.projeto.dao;

import br.com.projeto.bean.FuncionarioBean;
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
 * @author Alunos
 */
public class FuncionarioDAOTest {
    

    /**
     * Test of obterTodos method, of class FuncionarioDAO.
     */
    @Test
    public void testObterTodos() {
        Conexao.truncate();
        
        List<FuncionarioBean> funcionarios = new ArrayList<>();
        FuncionarioBean funcionario = new FuncionarioBean();
        funcionario.setNome("Sarah");
        funcionario.setCpf("12345678910");
        funcionario.setEmail("oi@oi.com");
        funcionario.setTelefone("(84)3507-3289");
        funcionario.setFuncao("faxineira");
        funcionario.setCep("89068172");
        funcionario.setCidade("Blumenau");
        funcionario.setBairro("Itoupavazinha");
        funcionario.setEstado("Santa Catarina");
        funcionario.setRua("2 de setembro");
        funcionario.setNumero("777");

        int cod = new FuncionarioDAO().adicionar(funcionario);
        funcionario.setId(cod);
        
        assertEquals(cod, 1);

    }

    /**
     * Test of adicionar method, of class FuncionarioDAO.
     */
    @Test
    public void testAdicionar() {
        Conexao.truncate();
        
        FuncionarioBean funcionario = new FuncionarioBean();
        funcionario.setNome("Sarah");
        funcionario.setCpf("12345678910");
        funcionario.setEmail("oi@oi.com");
        funcionario.setTelefone("(84)3507-3289");
        funcionario.setFuncao("faxineira");
        funcionario.setCep("89068172");
        funcionario.setCidade("Blumenau");
        funcionario.setBairro("Itoupavazinha");
        funcionario.setEstado("Santa Catarina");
        funcionario.setRua("2 de setembro");
        funcionario.setNumero("777");
        
        int cod = new FuncionarioDAO().adicionar(funcionario);
        funcionario.setId(cod);
        
        assertEquals(cod, 1);
    }

    /**
     * Test of excluir method, of class FuncionarioDAO.
     */
    @Test
    public void testExcluir() {
        Conexao.truncate();
        
        List<FuncionarioBean> funcionarios = new ArrayList<>();
        FuncionarioBean funcionario = new FuncionarioBean();
        funcionario.setNome("Sarah");
        funcionario.setCpf("12345678910");
        funcionario.setEmail("oi@oi.com");
        funcionario.setTelefone("(84)3507-3289");
        funcionario.setFuncao("faxineira");
        funcionario.setCep("89068172");
        funcionario.setCidade("Blumenau");
        funcionario.setBairro("Itoupavazinha");
        funcionario.setEstado("Santa Catarina");
        funcionario.setRua("2 de setembro");
        funcionario.setNumero("777");

        int cod = new FuncionarioDAO().adicionar(funcionario);
        funcionario.setId(cod);
        
        new FuncionarioDAO().excluir(cod);

    }

    /**
     * Test of editar method, of class FuncionarioDAO.
     */
    @Test
    public void testEditar() {
        Conexao.truncate();
        
        List<FuncionarioBean> funcionarios = new ArrayList<>();
        FuncionarioBean funcionario = new FuncionarioBean();
        funcionario.setNome("Sarah");
        funcionario.setCpf("12345678910");
        funcionario.setEmail("oi@oi.com");
        funcionario.setTelefone("(84)3507-3289");
        funcionario.setFuncao("faxineira");
        funcionario.setCep("89068172");
        funcionario.setCidade("Blumenau");
        funcionario.setBairro("Itoupavazinha");
        funcionario.setEstado("Santa Catarina");
        funcionario.setRua("2 de setembro");
        funcionario.setNumero("777");

        int cod = new FuncionarioDAO().adicionar(funcionario);
        funcionario.setId(cod);
        
        funcionario.setNome("Sara");
        funcionario.setCpf("62345678910");
        
        new FuncionarioDAO().editar(funcionario);
    }

    /**
     * Test of obterPeloId method, of class FuncionarioDAO.
     */
    @Test
    public void testObterPeloId() {
        Conexao.truncate();
    }

    /**
     * Test of validarLogin method, of class FuncionarioDAO.
     */
    @Test
    public void testValidarLogin() {
       Conexao.truncate();
    }

    /**
     * Test of obterTodosParaDataTable method, of class FuncionarioDAO.
     */
    @Test
    public void testObterTodosParaDataTable() {
        Conexao.truncate();
    }
    
}
