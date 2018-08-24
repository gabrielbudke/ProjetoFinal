package br.com.projeto.web.funcionarios;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns ="/cadastro/funcionário1")
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
        
        out.println("</div>");
        out.println("</body>");
        out.println("</html>");
    }
    

}
