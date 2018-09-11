/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.projeto.web.fornecedor;

import br.com.projeto.bean.FornecedorBean;
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
@WebServlet("/fornecedor/excluir")
public class FornecedorExcluir extends HttpServlet{

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        FornecedorBean fornecedor = new FornecedorBean();
        fornecedor.setId(Integer.parseInt(req.getParameter("id")));
        fornecedor.setNome(req.getParameter("nome"));
        fornecedor.setCnpj(req.getParameter("cnpj"));
    }
    
    
    
    
    
}
