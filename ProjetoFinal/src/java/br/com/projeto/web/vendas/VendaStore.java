/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.projeto.web.vendas;

import br.com.projeto.bean.ProdutoBean;
import br.com.projeto.bean.VendasBean;
import br.com.projeto.dao.ProdutoDAO;
import br.com.projeto.dao.VendasDAO;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author patrick
 */
@WebServlet("/vendas/store")
public class VendaStore extends HttpServlet{

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        VendasBean venda = new VendasBean();
        venda.setQuantidade(Integer.parseInt(req.getParameter("quantidade")));
        venda.setIdProduto(Integer.parseInt(req.getParameter("produto")));
        venda.setId(new VendasDAO().adicionar(venda));
             
        resp.sendRedirect("/vendas");
        
    
    }
    
    
    
}
