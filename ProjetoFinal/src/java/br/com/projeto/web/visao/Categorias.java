/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.projeto.web.visao;

import br.com.projeto.dao.CategoriaDAO;
import com.google.gson.Gson;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Gabriel Budke (gabrielbudke@gmail.com)
 */
@WebServlet(name = "Categorias", urlPatterns = {"/visao/categorias"})
public class Categorias extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("application/json");

        HashMap<String, Object> mapa = new CategoriaDAO().obterVisao();
        response.getWriter().write(new Gson().toJson(mapa));

    }

}
