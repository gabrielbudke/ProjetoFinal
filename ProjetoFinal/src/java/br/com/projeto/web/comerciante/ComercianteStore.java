package br.com.projeto.web.comerciante;

import br.com.projeto.bean.ComercianteBean;
import br.com.projeto.dao.ComercianteDAO;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Gabriel
 */
public class ComercianteStore extends HttpServlet{

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) 
            throws ServletException, IOException {

    ComercianteBean comerciante = new ComercianteBean();
    
    comerciante.setLogin(req.getParameter("login"));
    comerciante.setSenha(req.getParameter("senha"));
    comerciante.setNome(req.getParameter("nome"));
    comerciante.setCpf(req.getParameter("cpf"));
    comerciante.setEmail(req.getParameter("email"));
    comerciante.setBairro(req.getParameter("bairro"));
    comerciante.setCidade(req.getParameter("cidade"));
    comerciante.setEstado(req.getParameter("estado"));
    comerciante.setRua(req.getParameter("rua"));
    comerciante.setNumero(req.getParameter("numero"));
    comerciante.setTelefone(req.getParameter("telefone"));
    
    comerciante.setId(new ComercianteDAO().adicionar(comerciante));
    resp.sendRedirect("/funcionario/cadastro");
    
    }
    
    
           
    
}
