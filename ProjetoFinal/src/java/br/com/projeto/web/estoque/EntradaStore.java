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
 * @author Patrick Nacimento 
 */
@WebServlet("/estoque/entrada")
public class EntradaStore extends HttpServlet{

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
