package validacaoUser;

import br.com.projeto.dao.ComercianteDAO;
import com.sun.faces.action.RequestMapping;
import javax.servlet.http.HttpSession;

@Controller
      public class LoginController{

          @RequestMapping("loginForm")
          public String loginForm() {
              return "formulario-login";
          }
 @RequestMapping("efetuaLogin")
      public String efetuaLogin(Usuario usuario, HttpSession session) {
          if(new ComercianteDAO().existeUsuario(usuario)) {
              session.setAttribute("usuarioLogado", usuario);
              return "menu";
          }
          return "redirect:loginForm";
      }
}

