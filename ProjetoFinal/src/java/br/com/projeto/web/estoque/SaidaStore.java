/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.projeto.web.estoque;

import br.com.projeto.bean.EstoqueBean;
import br.com.projeto.dao.EstoqueDAO;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Gabriel Budke 
 */
@WebServlet("/estoque/saida")
public class SaidaStore extends HttpServlet{

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        EstoqueBean estoque = new EstoqueBean();
        estoque.setTipo(req.getParameter("tipo"));
        estoque.setQuantidade(Integer.parseInt(req.getParameter("quantidade")));
        //estoque.setIdProduto(Integer.parseInt(req.getParameter("produtoEntrada")));
        estoque.setId(new EstoqueDAO().adicionar(estoque));
        
        resp.sendRedirect("/estoque");

        resp.setContentType("text/html;metacharset=UTF-8");
    }
    
    
    
    
    
    
    
}
