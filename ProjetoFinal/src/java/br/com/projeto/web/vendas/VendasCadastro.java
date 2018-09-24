package br.com.projeto.web.vendas;

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
@WebServlet("/vendas/cadastro")
public class VendasCadastro extends HttpServlet{

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        resp.setContentType("text/html;charset=UTF-8");
        req.getRequestDispatcher("/jsp/vendas/cadastro.jsp").include(req, resp);
    }
    
    
    
}
