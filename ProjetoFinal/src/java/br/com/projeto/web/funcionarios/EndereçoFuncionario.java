package br.com.projeto.web.funcionarios;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns ="cadastro/funcionário1")
public class EndereçoFuncionario extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    PrintWriter out = resp.getWriter();
    out.println("<!DOCTYPE html>");
        out.println("<!DOCTYPE html>");
        out.println("<html>");
        out.println("<head>");
        out.println("<title><h3>Funcionário - Endereço</h3></title>");
        out.println("</head>");
        out.println("<body>");
        out.println("<label for='cep'><i class=''></i> CEP</label>");
        out.println("<input type='text' id='cep' name='cep' placeholder='CEP'>");
        out.println("<label for='estado'><i class='fa fa-envelope'></i> Estado</label>");
        out.println("<input type='text' id='estado' name='estado' placeholder='Estado'>");
        out.println("<label for='rua'><i class='fa fa-address-card-o'></i> Rua</label>");
        out.println("<input type='text' id='rua' name='rua' placeholder='Rua'>");
        out.println("<label for='bairro'><i class=''></i> Bairro</label>");
        out.println("<input type='text' id='bairro' name='bairro' placeholder='Bairro'>");
        out.println("<label for='numero'><i class=''></i> Numero</label>");
        out.println("<input type='number' id='numero' name='numero' placeholder='Numero'>");
        out.println("<label for='cidade'><i class=''></i> Cidade</label>");
        out.println("<input type='text' id='cidade' name='cidade' placeholder='Cidade'>");
        out.println("</div>");
        out.println("</body>");
        out.println("</html>");
    }
    

}
