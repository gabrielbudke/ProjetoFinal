package br.com.projeto.web.fornecedor;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(urlPatterns="/fornecedor/cadastro")


public class FornecedorCadastro extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        
        resp.setContentType("text/html;charset=UTF-8");
        req.getRequestDispatcher("../jsp/fornecedor/cadastro.jsp").include(req, resp);

        resp.sendRedirect("/fornecedor");
    }

}
