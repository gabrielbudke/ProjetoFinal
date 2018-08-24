package br.com.projeto.web.categoria;

import br.com.projeto.bean.CategoriaBean;
import br.com.projeto.dao.CategoriaDAO;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @author Logan Michel
 */

@WebServlet(urlPatterns = "/categorias")
public class CategoriaIndex extends HttpServlet{

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<CategoriaBean> categorias = new CategoriaDAO().obterTodos();
        
        req.setAttribute("categorias", categorias);
        req.getRequestDispatcher("/categoria/index.jsp").include(req, resp);
    }
    
    
    
}
