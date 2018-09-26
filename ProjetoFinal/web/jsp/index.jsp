<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>E-Stock</title>

   <%@include file="/jsp/master/css.jsp" %>
   <script src="/js/jquery.validate.min.js"></script>
<%--JS Valida??o dos Campos--%>
<script src="/js/validacao-funcionario.js"></script>
<script src="/js/validacao-fornecedor.js"></script>
<script src="/js/validacao-produto.js"></script>
<script src="/libs/mask/jquery.mask.js"></script>
  </head>

<body class="login">
    <div>
      <a class="hiddenanchor" id="signup"></a>
      <a class="hiddenanchor" id="signin"></a>

      <div class="login_wrapper">
        <div class="animate form login_form">
          <section class="login_content">
            <form method="post" action="/usuario/login">
              <h1>Login</h1>
              <div>
                <input type="text" class="form-control" name="u" placeholder="Usuário" required="required" />
              </div>
              <div>
                <input type="password" class="form-control" name="p" placeholder="Senha" required="required" />
              </div>
              <div>
                <button type="submit" class="btn btn-dark btn-lg">Entrar</button>
                
              </div>

              <div class="clearfix"></div>

              <div class="separator">
                <p class="change_link">Não está cadastrado?
                  <a href="#signup" class="to_register"> Criar conta </a>
                </p>

                <div class="clearfix"></div>
                <br />

                <div>
                  <h1><i class="fas fa-box-open"></i> E-Stock</h1>
                  <p>©2018 Todos os direitos reservados.</p>
                </div>
              </div>
            </form>
          </section>
        </div>

        <div id="register" class="animate form registration_form">
          <section class="login_content">
            <form action="/funcionarios/store" method="post">
              <h1>Criar conta</h1>
              <div>
                <input type="text" class="form-control" id="campo-login" name='login' placeholder="Login" onfocusout="validadarCampoLogin">
              </div>
              <div>
                
                  <input type="password" class="form-control" id="campo-senha" name="senha" placeholder="Senha" required="required" onfocusout="validarCampoSenha">
              </div>
              <div>
                 <input type='text' class="form-control" id='campo-nome' name='nome' placeholder='Nome Completo'>
              </div>

              <div>
                <input type='text' class="form-control" id='campo-cpf' name='cpf' placeholder="CPF">
              </div>
              <div>
              <input type='email' class="form-control" id='campo-email' name='email' placeholder='E-mail'>
             
                <input type='text' class="form-control" id='campo-telefone' name='telefone' placeholder='Telefone'>
              </div>
               <div>
                <input type='text' class="form-control" id='function' name='funcao' placeholder='Função'>
              </div>

               <div>
               <input type='text' class="form-control" id='campo-cep' name='cep' placeholder='CEP'>
              </div>
              <div>
  <input type='text' class="form-control" id='campo-estado' name='estado' placeholder='Estado' onfocusout='processarCep()' >
              </div>
               <div>
                <input type='text' class="form-control" id='campo-logradouro' name='rua' placeholder='Rua'  >
              </div>

                <div>
                <input type='text' class="form-control" id='campo-bairro' name='bairro' placeholder='Bairro'>
              </div>
              <div>
              <input type='text' class="form-control" id='campo-cidade' name='cidade' placeholder='Cidade'>
              </div> 
                <div>
                 <input type='text' class="form-control" id='campo-numero' name='numero' placeholder='Numero'>
              </div>
              <br>

              

              
              <div>
                <button type="submit" class="btn btn-dark btn-lg">Cadastrar</button>
              </div>

              <div class="clearfix"></div>

              <div class="separator">
                <p class="change_link">Já tem uma conta?
                  <a href="#signin" class="to_register"> Entrar </a>
                </p>

                <div class="clearfix"></div>
                <br />

                <div>
                  <h1><i class="fas fa-box-open"></i> E-Stock</h1>
                  <p>©2018 Todos os direitos reservados.</p>
                </div>
              </div>
            </form>
          </section>
        </div>
      </div>
    </div>
  </body>
</html>
