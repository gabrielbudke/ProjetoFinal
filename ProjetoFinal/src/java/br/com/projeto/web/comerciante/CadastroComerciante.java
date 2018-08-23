package br.com.projeto.web.comerciante;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns ="/comerciante/cadastro")
public class CadastroComerciante extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        PrintWriter out = resp.getWriter();
        out.println("<!DOCTYPE html>");
        out.println("<!DOCTYPE html>");
        out.println("<html>");
        out.println("<head>");
        out.println("<title><h3>Comerciante</h3></title>");
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
        out.println("<input type='text' id='telefone' name='telefone' placeholder='(47)3333-3333'>");
        out.println("<label for='rua'><i class=''></i> Rua</label>");
        out.println("<input type='text' id='rua' name='rua' placeholder='Rua'>");
        out.println("<label for='num'><i class=''></i> Numero</label>");
        out.println("<input type='tel' id='num' name='numero' placeholder='numero'>");
        out.println("<label for='bairro'><i class=''></i> Bairro</label>");
        out.println("<input type='text' id='bairro' name='bairro' placeholder='Bairro'>");
        out.println("<label for='city'><i class=''></i> Cidade</label>");
        out.println("<input type='text' id='city' name='cidade' placeholder='Cidade'>");
        out.println("<label for='state'>Estado</label>");
        out.println("<input type='text' id='state' name='state' placeholder='Estado'>	              ");
        out.println("</div>");
        out.println("</body>");
        out.println("</html>");
    }
                }
        


