<%-- 
/**
* @author Patrick Otavio do Nacimento(patricknascimento198@gmail.com)
* @date 2018-08-27
*/
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../master/master.jsp" %>
    
        <script type="text/javascript" src="/js/jquery-3.2.1.min.js"></script>
        <script src='/js/cadastroComerciante.js'></script>
          
           <div class = "register Scroll">

        <div class="form-group">
            <label for='campo-login' ><i class=''></i> Login</label>
            <input type='text' id='campo-login' name='login' placeholder='Login' required='required' onfocusout='validarCampoNome()'>
        </div>
        <div id='div-campo-senha' class='form-group'>
            <label for='campo-senha'>Senha <span class='text-danger font-weight-bold'></span></label>
<<<<<<< HEAD
            <input class='form-control' type='password' id='campo-senha' name='senha' required='required' onfocusout='validarCampoSenha()'>
=======
            <input type='text' id='campo-senha' name='senha' required='required' onfocusout='validarCampoSenha()' placeholder='Senha'>
>>>>>>> 50aa4971ba313bce55bc205a57d7946bde7de549
        </div>
        <div id='div-campo-nome' class='form-group '>
            <label for='campo-nome'>Nome <span class='text-danger font-weight-bold'></span></label>
            <input  type='text' id='campo-nome' name='nome' required='required' onfocusout='validarCampoNome()' placeholder = 'Nome'>
        </div>
        <div id='div-campo-cpf' class='form-group'>
            <label for='campo-cpf'>CPF  <span class='text-danger font-weight-bold'></span></label>
            <input  type='text' id='campo-cpf' name='cpf' required='required' onfocusout='validarCampoCpf()' placeholder ='CPF'>
        </div>
        <div class="form-group">
            <label for='campo-email'><i class=''></i> E-mail</label>
            <input type='text' id='campo-email' name='email' placeholder='E-mail' required='required' onfocusout='validarCampoEmail()'>
        </div>
        <div class="form-group">
            <label for='campo-telefone'><i class=''></i> Telefone</label>
            <input type='text' id='campo-telefone' name='telefone' placeholder='(47)3333-3333' required='required' onfocusout='validarCampoTelefone()'>
        </div>
        <div class="form-group">
            <label for='campo-cep'><i class=''></i> Cep</label>
            <input type='text' id='cep' name='cep' placeholder='Cep' required='required' >
        </div>
        <div class="form-group">
            <label for='logradouro'><i class=''></i> Rua</label>
            <input type='text' id='logradouro' name='rua' placeholder='Rua'>
        </div>
        <div class="form-group">
            <label for='campo-bairro'><i class=''></i> Bairro</label>
            <input type='text' id='bairro' name='bairro' placeholder='Bairro'>
        </div>

        <div class="form-group">
            <label for='campo-cidade'><i class=''></i> Cidade</label>
            <input type='text' id='cidade' name='cidade' placeholder='Cidade'>
        </div>
        <div class="form-group">
            <label for='campo-estado'>Estado</label>
            <input type='text' id='campo-estado' name='estado' placeholder='Estado'>
        </div>
        <div class="form-group">
            <label for='campo-numero'><i class=''></i> Número</label>
            <input type='tel' id='campo-numero' name='numero' placeholder='Numero' required='required' onfocusout='validarCampoNumero()'>
        </div>

            <button type="submit" class="btn btn-primary btn-block btn-large">Cadastrar</button>
            </div>
            
        
</form>
    



<%@include file="../master/rodape.jsp" %>

