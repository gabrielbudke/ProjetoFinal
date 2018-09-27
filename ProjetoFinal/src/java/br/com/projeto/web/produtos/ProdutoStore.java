package br.com.projeto.web.produtos;

import br.com.projeto.bean.CategoriaBean;
import br.com.projeto.bean.EstoqueBean;
import br.com.projeto.bean.ProdutoBean;
import br.com.projeto.dao.CategoriaDAO;
import br.com.projeto.dao.EstoqueDAO;
import br.com.projeto.dao.ProdutoDAO;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @author Logan Michel
 */
@WebServlet(urlPatterns = "/produtos/store")
public class ProdutoStore extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        //Inserindo dados no ProdutoBean
        ProdutoBean produto = new ProdutoBean();
        produto.setNome(req.getParameter("nome"));
        produto.setPreco(Float.parseFloat(req.getParameter("preco")));
        produto.setIdCategoria(Integer.parseInt(req.getParameter("categoria")));
        produto.setId(new ProdutoDAO().adicionar(produto));

        //Inserindo dados no EstoqueBean
        EstoqueBean estoque = new EstoqueBean();
        estoque.setProduto(produto);
        estoque.setQuantidade(Integer.parseInt(req.getParameter("quantidade")));
        estoque.setTipo(req.getParameter("tipo"));
        estoque.setIdProduto(produto.getId());
        estoque.setId(new EstoqueDAO().adicionar(estoque));
        
        resp.sendRedirect("/produtos");
         
    }

}
