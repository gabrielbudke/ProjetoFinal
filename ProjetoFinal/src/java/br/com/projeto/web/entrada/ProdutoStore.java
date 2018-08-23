package br.com.projeto.web.entrada;

import br.com.projeto.bean.CategoriaBean;
import br.com.projeto.bean.ProdutoBean;
import br.com.projeto.dao.CategoriaDAO;
import br.com.projeto.dao.ProdutoDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @author Logan Michel
 */
@WebServlet(urlPatterns = "/produtos/store")
public class ProdutoStore extends HttpServlet{
    

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        ProdutoBean produto = new ProdutoBean();
        
        produto.setNome(req.getParameter("nome"));
        produto.setPreco(Float.parseFloat(req.getParameter("preco")));
        produto.setQuantidade(Integer.parseInt(req.getParameter("quantidade")));
       
        
        produto.setId(new ProdutoDAO().adicionar(produto));
        resp.sendRedirect("/produtos/cadastro");
        
        
    }
    
    
}
