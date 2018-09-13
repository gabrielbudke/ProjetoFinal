/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
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
 * @author Patrick Nacimento
 */
@WebServlet ("/funcionario/update")
public class FuncionarioUpdate extends HttpServlet{

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        FuncionarioBean funcionario = new FuncionarioBean();
        funcionario.setId(Integer.parseInt(req.getParameter("id")));
        funcionario.setLogin(req.getParameter("login"));
        funcionario.setSenha(req.getParameter("senha"));
        funcionario.setNome(req.getParameter("nome"));
        funcionario.setCpf(req.getParameter("cpf"));
        funcionario.setEmail(req.getParameter("email"));
        funcionario.setTelefone(req.getParameter("telefone"));
        funcionario.setFuncao(req.getParameter("funcao"));
        funcionario.setCep(req.getParameter("cep"));
        funcionario.setEstado(req.getParameter("estado"));
        funcionario.setRua(req.getParameter("rua"));
        funcionario.setBairro(req.getParameter("bairro"));
        funcionario.setCidade(req.getParameter("cidade"));
        funcionario.setNumero(req.getParameter("numero"));
        
        boolean alterou = new FuncionarioDAO().editar(funcionario);
        
        resp.sendRedirect("/funcionario");
        
    }
    
    
    
    
    
    
}
