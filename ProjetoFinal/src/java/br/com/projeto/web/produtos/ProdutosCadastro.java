package br.com.projeto.web.produtos;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns ="/produtos/cadastro")
public class ProdutosCadastro extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    
        req.getRequestDispatcher("/jsp/produtos/cadastro.jsp").include(req, resp);
        
        resp.setContentType("text/html;charset=UTF-8");
        
    }
    
}
