package br.com.projeto.web.fornecedor;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns ="/fornecedores/cadastro")
public class FornecedoresCadastro extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out = resp.getWriter();
        out.println("<!DOCTYPE html>");
         out.println("<!DOCTYPE html>");
         out.println("<html>");
         out.println("<head>");
         out.println("<title><h3>Fornecedores</h3></title>");
         out.println("</head>");
         out.println("<body>");
         out.println("<label for='nome'><i class=''></i> Nome</label>");
         out.println("<input type='text' id='nome' name='nome' placeholder='Nome'>");
         out.println("<label for='cnpj'><i class='fa fa-address-card-o'></i> CNPJ</label>");
         out.println("<input type='text' id='cnpj' name='cnpj' placeholder='CNPJ'>");
         out.println("<label for='email'><i class=''></i> E-mail</label>");
         out.println("<input type='text' id='email' name='email' placeholder='E-mail'>");
         out.println("<label for='telefone'><i class=''></i> Telefone</label>");
         out.println("<input type='number' id='telefone' name='telefone' placeholder='Telefone'>");
         out.println("</div>");
         out.println("</body>");
         out.println("</html>");
    }
    
            

}
