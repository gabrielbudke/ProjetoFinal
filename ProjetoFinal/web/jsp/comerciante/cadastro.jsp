<%-- 
/**
* @author Patrick Otavio do Nacimento(patricknascimento198@gmail.com)
* @date 2018-08-27
*/
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../master/master.jsp" %>
<form action="/comerciante/store" method="post">
    


        <div class = "register Scroll">
            
        <div class="form-group">
            <label for='campo-login' ><i class=''></i> Login</label>
            <input type='text' id='campo-login' name='login' placeholder='Login'>
        </div>
        <div class="form-group">
            <label for='campo-senha' ><i class=''></i> Senha</label>
            <input type='text' id='campo-senha' name='senha' placeholder='Senha'>
        </div>
        <div id='div-campo-nome' class='form-group'>
            <label for='campo-nome'>Nome <span class='text-danger font-weight-bold'></span></label>
            <input class='form-control' type='text' id='campo-nome' name='nome' required='required' onfocusout='validarCampoNome()'>
        </div>
        <div id='div-campo-cpf' class='form-group'>
            <label for='campo-cpf'>Cpf <span class='text-danger font-weight-bold'></span></label>
            <input class='form-control' type='text' id='campo-cpf' name='cpf' required='required' onfocusout='validarCampoCpf()'>
        </div>
        <div class="form-group">
            <label for='campo-email'><i class=''></i> E-mail</label>
            <input type='text' id='campo-email' name='email' placeholder='E-mail'>
        </div>
        <div class="form-group">
            <label for='campo-telefone'><i class=''></i> Telefone</label>
            <input type='text' id='campo-telefone' name='telefone' placeholder='(47)3333-3333'>
        </div>
        <div class="form-group">
            <label for='campo-cep'><i class=''></i> Cep</label>
            <input type='text' id='cep' name='cep' placeholder='cep' required='required' >
        </div>
        <div class="form-group">
            <label for='logradouro'><i class=''></i> Rua</label>
            <input type='text' id='logradouro' name='rua' placeholder='Rua'>
        </div>
        <div class="form-group">
            <label for='campo-numero'><i class=''></i> Número</label>
            <input type='tel' id='campo-numero' name='numero' placeholder='numero'>
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

            <button type="submit" class="btn btn-primary btn-block btn-large">Cadastrar</button>
            </div>
            <input type="submit" value="Cadastrar">
        </div>
        
</form>

<%@include file="../master/rodape.jsp" %>

