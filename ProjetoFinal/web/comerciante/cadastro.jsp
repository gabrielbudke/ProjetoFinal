<%-- 
/**
* @author Patrick Otavio do Nacimento(patricknascimento198@gmail.com)
* @date 2018-08-27
*/
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../master/master.jsp" %>
<!DOCTYPE html>

<form action="/ProjetoFinal/comerciante/store" method="post">
    
    
        
          
        
        <div class = "register Scroll">
            <div class="form-group">
            <label for='campo-login' ><i class=''></i> Login</label>
            <input type='text' id='campo-login' name='login' placeholder='Login'>
        </div>
        <div class="form-group">
            <label for='campo-senha' ><i class=''></i> Senha</label>
            <input type='text' id='campo-senha' name='senha' placeholder='Senha'>
        </div>
        <div class="form-group">
            <label for='campo-nome'><i class=''></i> Nome</label>
            <input type='text' id='campo-nome' name='nome' placeholder='Nome'>
        </div>
        <div class="form-group">
            <label for='campo-sobrenome'><i class='fa fa-envelope'></i> Sobrenome</label>
            <input type='text' id='campo-sobrenome' name='sobrenome' placeholder='Sobrenome'>
        </div>
        <div class="form-group">
            <label for='campo-cpf'><i class='fa fa-address-card-o'></i> CPF</label>
            <input type='text' id='campo-cpf' name='cpf' placeholder='CPF'>
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
            <label for='campo-rua'><i class=''></i> Rua</label>
            <input type='text' id='campo-rua' name='rua' placeholder='Rua'>
        </div>
        <div class="form-group">
            <label for='campo-numero'><i class=''></i> Numero</label>
            <input type='tel' id='campo-numero' name='numero' placeholder='numero'>
        </div>
        <div class="form-group">
            <label for='campo-bairro'><i class=''></i> Bairro</label>
            <input type='text' id='campo-bairro' name='bairro' placeholder='Bairro'>
        </div>
        <div class="form-group">
            <label for='campo-cidade'><i class=''></i> Cidade</label>
            <input type='text' id='campo-cidade' name='cidade' placeholder='Cidade'>
        </div>
        <div class="form-group">
            <label for='campo-estado'>Estado</label>
            <input type='text' id='campo-estado' name='estado' placeholder='Estado'>
        </div>
            <input type="submit" value="Cadastrar">
        </div>
       
          
</form>
    </div>

    
<%@include file="../master/rodape.jsp" %>
