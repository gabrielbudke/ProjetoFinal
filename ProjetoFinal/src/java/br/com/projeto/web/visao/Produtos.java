/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.projeto.web.visao;

import br.com.projeto.dao.EstoqueDAO;
import com.google.gson.Gson;
import java.io.IOException;
import java.util.HashMap;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Gabriel Budke (gabrielbudke@gmail.com)
 */
@WebServlet(name = "Produtos", urlPatterns = {"/visao/produtos"})
public class Produtos extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        resp.setContentType("application/json");
        HashMap<String, Object> mapa = new EstoqueDAO().obterProduto();
        resp.getWriter().write(new Gson().toJson(mapa));

    }

}
