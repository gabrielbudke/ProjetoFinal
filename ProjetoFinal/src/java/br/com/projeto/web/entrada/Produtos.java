package br.com.projeto.web.entrada;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns ="/produtos/cadastro")
public class Produtos extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    PrintWriter out = resp.getWriter();   
     out.println("<!DOCTYPE html>");
         out.println("<!DOCTYPE html>");
         out.println("<html>");
         out.println("<head>");
         out.println("<title><h3>Produtos</h3></title>");
         out.println("</head>");
         out.println("<body>");
         out.println("<label for='cat'><i class=''></i> Categoria</label>");
         out.println("<input type='text' id='categoria' name='categoria' placeholder='Categoria'>");
         out.println("<label for='nome'><i class='fa fa-address-card-o'></i> Nome</label>");
         out.println("<input type='text' id='nome' name='nome' placeholder='Nome'>");
         out.println("<label for='preco'><i class=''></i> Preço</label>");
         out.println("<input type='text' id='preco' name='preco' placeholder='Preço'>");
         out.println("</div>");
         out.println("</body>");
         out.println("</html>");
    }
    
}
