package br.com.projeto.web.funcionarios;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns ="/cadastro/funcionaio")
public class CadastroFuncionario extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
         PrintWriter out = resp.getWriter();
            
         out.println("<!DOCTYPE html>");
         out.println("<!DOCTYPE html>");
         out.println("<html>");
         out.println("<head>");
         out.println("<title><h3>Funcionário</h3></title>");
         out.println("</head>");
         out.println("<body>");
         out.println("<label for='nome'><i class=''></i> Nome</label>");
         out.println("<input type='text' id='nome' name='nome' placeholder='Nome'>");
         out.println("<label for='snome'><i class='fa fa-envelope'></i> Sobrenome</label>");
         out.println("<input type='text' id='snome' name='sobrenome' placeholder='Sobrenome'>");
         out.println("<label for='cpf'><i class='fa fa-address-card-o'></i> CPF</label>");
         out.println("<input type='text' id='cpf' name='cpf' placeholder='CPF'>");
         out.println("<label for='email'><i class=''></i> E-mail</label>");
         out.println("<input type='text' id='email' name='email' placeholder='E-mail'>");
         out.println("<label for='telefone'><i class=''></i> Telefone</label>");
         out.println("<input type='number' id='telefone' name='telefone' placeholder='Telefone'>");
         out.println("<label for='function'><i class=''></i> Função</label>");
         out.println("<input type='text' id='function' name='funcao' placeholder='Função'>");
         out.println("</div>");
         out.println("</body>");
         out.println("</html>");
    }
    

}
