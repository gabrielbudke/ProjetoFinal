/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.projeto.dao;

import br.com.projeto.bean.FluxoCaixaBean;
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
 * @author Patrick Nacimento
 */
public class FluxoCaixaDAOTest {
    

    /**
     * Test of adicionar method, of class FluxoCaixaDAO.
     */
    @Test
    public void testAdicionar() {
        Conexao.truncate();
        
        List<FluxoCaixaBean> fluxoCaixas = new ArrayList<>();
        FluxoCaixaBean fluxoCaixa = new FluxoCaixaBean();
        fluxoCaixa.setSaldoFinal(12.2);
        fluxoCaixa.setSaldoInicial(13.3);
        fluxoCaixa.setTotalRecebido(30.3);
        fluxoCaixa.setTotalSaida(15.5);
        
        int cod = new FluxoCaixaDAO().adicionar(fluxoCaixa);
        
        assertEquals(cod, -1);
    }

    /**
     * Test of excluir method, of class FluxoCaixaDAO.
     */
    @Test
    public void testExcluir() {
        Conexao.truncate();
        
        List<FluxoCaixaBean> fluxoCaixas = new ArrayList<>();
        FluxoCaixaBean fluxoCaixa = new FluxoCaixaBean();
        fluxoCaixa.setSaldoFinal(12.2);
        fluxoCaixa.setSaldoInicial(13.3);
        fluxoCaixa.setTotalRecebido(30.3);
        fluxoCaixa.setTotalSaida(15.5);
        
        int cod = new FluxoCaixaDAO().adicionar(fluxoCaixa);
        
        fluxoCaixa.setSaldoInicial(13.3);
        
        new FluxoCaixaDAO().excluir(cod);
    }
    
}
