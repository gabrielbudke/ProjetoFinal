package br.com.projeto.web.funcionarios;

import br.com.projeto.bean.FuncionarioBean;
import br.com.projeto.dao.FuncionarioDAO;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Patrick
 */
@WebServlet(urlPatterns = "/funcionarios/store")
public class FuncionarioStore extends HttpServlet{

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        FuncionarioBean funcionario = new FuncionarioBean();
        
        funcionario.setNome(req.getParameter("nome"));
        funcionario.setFuncao(req.getParameter("funcao"));
        funcionario.setCpf(req.getParameter("cpf"));
        funcionario.setTelefone(req.getParameter("telefone"));
        
        funcionario.setId(new FuncionarioDAO().adicionar(funcionario));
        resp.sendRedirect("/ProjetoFinal/funcionario/cadastro");
        
    }
    
    
    
}
