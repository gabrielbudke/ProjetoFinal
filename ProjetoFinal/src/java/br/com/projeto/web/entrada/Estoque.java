package br.com.projeto.web.entrada;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns="/estoque/cadastro")
public class Estoque extends HttpServlet {
    
    private PrintWriter out;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        out = resp.getWriter();
        out.println("!DOCTYPE html>");
        out.println("html>");
        out.println("head>");
        out.println("title>Estoque Alimentos</title>");
        out.println("/head>");
        out.println("body>");
        out.println("div>");
        out.println("table>");
        out.println("thead>");
        out.println("/thead>");
        out.println("tbody>");
        out.println("<tr>");
        out.println("<td>");
        out.println("th>Categoria</th>");
        out.println("</td>");
        out.println("<td>");
        out.println("th>Produto</th>");
        out.println("</td>");
        out.println("<td>");
        out.println("th>Valor(Un.)</th>");
        out.println("</td>");
        out.println("<td>");
        out.println("th>Quantidade</th>");
        out.println("</td>");
        out.println("</tr>");
        out.println("/tbody>");
        out.println("/table>");
        out.println("/div>");
        out.println("/body>");
        out.println("/html>");

        
        
        
    }
    

}
