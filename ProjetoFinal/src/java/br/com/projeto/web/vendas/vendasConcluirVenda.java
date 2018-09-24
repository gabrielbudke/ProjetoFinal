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
@WebServlet("/estoque/concluirVendas")
public class vendasConcluirVenda extends HttpServlet{

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        req.getRequestDispatcher("/jsp/vendas/novaVenda.jsp").include(req, resp);
        
        resp.setContentType("text/html;charset=UTF-8");
    }
    
    
    
}
