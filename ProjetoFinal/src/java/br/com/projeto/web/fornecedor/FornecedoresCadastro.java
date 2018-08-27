package br.com.projeto.web.fornecedor;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

<<<<<<< HEAD
@WebServlet(urlPatterns = "/fornecedores/cadastro")
=======
@WebServlet(urlPatterns = "/fornecedor/cadastro")
>>>>>>> 37733d5914e858812381847339ae95e4a8b14d4b
public class FornecedoresCadastro extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
<<<<<<< HEAD
        PrintWriter out = resp.getWriter();
        out.println("<!DOCTYPE html>");
        out.println("<!DOCTYPE html>");
        out.println("<html>");
        out.println("<head>");
        out.println("<title><h3>Fornecedores</h3></title>");
        out.println("<link href='//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css'rel='stylesheet' id='bootstrap-css'>");
        out.println("<script src='//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js'></script>");
        out.println("<script src='//code.jquery.com/jquery-1.11.1.min.js'></script>");
        out.println("</head>");
        out.println("<body>");
        out.println("<label for='nome'><i class=''></i> Nome</label>");
        out.println("<div class='container'>");
        out.println("<div class='row'>");
        out.println("<div class='col-md-12'>");
        out.println("<div class='pr-wrap'>");
        out.println("<div class='pass-reset'>");
        out.println("<label>");
        out.println("Enter the email you signed up with</label>");
        out.println("<input type='email' placeholder='Email' />");
        out.println("<input type='submit' value='Submit' class='pass-reset-submit btn btn-success btn-sm' />");
        out.println("</div>");
        out.println("</div>");
        out.println("<div class='wrap'>");
        out.println("<p class='form-title'>");
        out.println("Sign In</p>");
        out.println("<form class='login'>");
        out.println("<input type='text' placeholder='Username' />");
        out.println("<input type='password' placeholder='Password' />");
        out.println("<input type='submit' value='Sign In' class='btn btn-success btn-sm' />");
        out.println("<div class='remember-forgot'>");
        out.println("<div class='row'>");
        out.println("<div class='col-md-6'>");
        out.println("<div class='checkbox'>");
        out.println("<label>");
        out.println("<input type='checkbox' />");
        out.println("Remember Me");
        out.println("</label>");
        out.println("</div>");
        out.println("</div>");
        out.println("<div class='col-md-6 forgot-pass-content'>");
        out.println("<a href='javascription:void(0)' class='forgot-pass'>Forgot Password</a>");
        out.println("</div>");
        out.println("</div>");
        out.println("</div>");
        out.println("</form>");
        out.println("</div>");
        out.println("</div>");
        out.println("</div>");
        out.println("<div class='posted-by'>Posted By: <a href='http://www.jquery2dotnet.com'>Bhaumik Patel</a></div>");
        out.println("</div>");

        out.println("</body>");
        out.println("</html>");
=======

        req.getRequestDispatcher("/fornecedor/cadastro.jsp").include(req, resp);

>>>>>>> 37733d5914e858812381847339ae95e4a8b14d4b
    }

}
