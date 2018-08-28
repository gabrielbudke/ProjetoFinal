<%-- 
/**
* @author Patrick Otavio do Nacimento(patricknascimento198@gmail.com)
* @date 2018-08-27
*/
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../master/master.jsp" %>
<form action="/ProjetoFinal/comerciante/store" method="post">
        <div class="form-group">
            <label for='campo-login' ><i class=''></i> Login</label>
            <input type='text' id='campo-login' name='login' placeholder='Login'>
        </div>
        <div class="form-group">
            <label for='campo-senha' ><i class=''></i> Senha</label>
            <input type='text' id='campo-senha' name='senha' placeholder='Senha'>
        </div>
        <div class="form-group">
            <label for='nome'><i class=''></i> Nome</label>
            <input type='text' id='nome' name='nome' placeholder='Nome'>
        </div>
        <div class="form-group">
            <label for='snome'><i class='fa fa-envelope'></i> Sobrenome</label>
            <input type='text' id='snome' name='sobrenome' placeholder='Sobrenome'>
        </div>
        <div class="form-group">
            <label for='cpf'><i class='fa fa-address-card-o'></i> CPF</label>
            <input type='text' id='cpf' name='cpf' placeholder='CPF'>
        </div>
        <div class="form-group">
            <label for='email'><i class=''></i> E-mail</label>
            <input type='text' id='email' name='email' placeholder='E-mail'>
        </div>
        <div class="form-group">
            <label for='telefone'><i class=''></i> Telefone</label>
            <input type='text' id='telefone' name='telefone' placeholder='(47)3333-3333'>
        </div>
        <div class="form-group">
            <label for='rua'><i class=''></i> Rua</label>
            <input type='text' id='rua' name='rua' placeholder='Rua'>
        </div>
        <div class="form-group">
            <label for='num'><i class=''></i> Numero</label>
            <input type='tel' id='num' name='numero' placeholder='numero'>
        </div>
        <div class="form-group">
            <label for='bairro'><i class=''></i> Bairro</label>
            <input type='text' id='bairro' name='bairro' placeholder='Bairro'>
        </div>
        <div class="form-group">
            <label for='city'><i class=''></i> Cidade</label>
            <input type='text' id='city' name='cidade' placeholder='Cidade'>
        </div>
        <div class="form-group">
            <label for='state'>Estado</label>
            <input type='text' id='state' name='state' placeholder='Estado'>
        </div>
            <input type="submit" value="Cadastrar">
</form>

<%@include file="../master/rodape.jsp" %>
