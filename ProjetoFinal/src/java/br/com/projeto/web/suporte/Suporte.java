/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.projeto.web.suporte;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Gabriel Budke (gabrielbudke@gmail.com)
 */
@WebServlet(name="Suporte", urlPatterns={"/suporte"})
public class Suporte extends HttpServlet{

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        resp.setContentType("text/html;metacharset='utf-8'");
        req.getRequestDispatcher("/jsp/suporte/suporte.jsp").include(req, resp);
    }
    
    
}
