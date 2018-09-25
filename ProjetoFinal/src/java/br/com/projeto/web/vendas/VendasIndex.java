package br.com.projeto.web.vendas;

import br.com.projeto.bean.EstoqueBean;
import br.com.projeto.bean.VendasBean;
import br.com.projeto.dao.EstoqueDAO;
import br.com.projeto.dao.VendasDAO;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Patrick
 */
@WebServlet("/vendas")
public class VendasIndex extends HttpServlet{

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        resp.setContentType("text/html;charset=UTF-8");
        List<EstoqueBean> estoques = new EstoqueDAO().obterSaida();
        req.setAttribute("estoques", estoques);
        req.getRequestDispatcher("/jsp/vendas/index.jsp").include(req, resp);
    }
    
    
    
}
