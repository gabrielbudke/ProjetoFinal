
package br.com.projeto.web.principal;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns ="/Inicial")
public class Inicial extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out = resp.getWriter();
        
       
        out.println("<div class='modal fade' id='login-modal' tabindex='-1' role='dialog' aria-labelledby='myModalLabel' aria-hidden='true' style='display: out.println(none;'>");
        out.println("<div class='modal-dialog'>");
        out.println("<div class='loginmodal-container'>");
        out.println("<h1>Login to Your Account</h1><br>");
        out.println("<form action ='/Inicial' method ='post'>");
        out.println("<input type='text' name='user' placeholder='Username'>");
        out.println("<input type='password' name='pass' placeholder='Password'>");
        out.println("<input type='submit' name='login' class='login loginmodal-submit' value='Login'>");
        out.println("</form>	");
        out.println("<div class='login-help'>");
        out.println("<a href='#'>Register</a> - <a href='#'>Forgot Password</a>");
        out.println("</div>");
        out.println("</div>");
        out.println("</div>");
        out.println("</div>");
    }
    
    
}
