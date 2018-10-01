package br.com.projeto.web.produtos;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @author Gabriel Budke
 */
@WebServlet(urlPatterns="/produtos/saida")
public class ProdutoSaida extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/hmtl;charset=UTF-8");
        req.getRequestDispatcher("/produtos/saida.jsp").include(req, resp);

        
        
        
    }

}
