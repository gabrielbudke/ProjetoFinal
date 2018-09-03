<%-- 
/**
* @author Patrick Otavio do Nacimento(patricknascimento198@gmail.com)
* @date 2018-08-24
*/
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../master/master.jsp" %>

<form action="/funcionarios/store" method="POST">

    <div class = "form-group">
        <label for='nome'><i class=''></i> Nome</label>
        <input type='text' id='nome' name='nome' placeholder='Nome'>
    </div>

    <div class = "form-group">
        <label for='cpf'><i class='fa fa-address-card-o'></i> CPF</label>
        <input type='text' id='cpf' name='cpf' placeholder='CPF'>
    </div>

    <div class = "form-group">
        <label for='email'><i class=''></i> E-mail</label>
        <input type='text' id='email' name='email' placeholder='E-mail'>
    </div>

    <div class = "form-group">
        <label for='telefone'><i class=''></i> Telefone</label>
        <input type='text' id='telefone' name='telefone' placeholder='Telefone'>
    </div>

    <div class = "form-group">
        <label for='funcao'><i class=''></i> Função</label>
        <input type='text' id='function' name='funcao' placeholder='Função'>
    </div>

    <div>
        <label for='cep'><i class=''></i> CEP</label>
        <input type='text' id='cep' name='cep' placeholder='CEP'>
    </div>

    <div>
        <label for='estado'><i class='fa fa-envelope'></i> Estado</label>
        <input type='text' id='estado' name='estado' placeholder='Estado'>
    </div>

    <div>
        <label for='rua'><i class='fa fa-address-card-o'></i> Rua</label>
        <input type='text' id='rua' name='rua' placeholder='Rua'>
    </div>

    <div>
        <label for='bairro'><i class=''></i> Bairro</label>
        <input type='text' id='bairro' name='bairro' placeholder='Bairro'>
    </div>

    <div>
        <label for='numero'><i class=''></i> Numero</label>
        <input type='text' id='numero' name='numero' placeholder='Numero'>
    </div>

    <div>
        <label for='cidade'><i class=''></i> Cidade</label>
        <input type='text' id='cidade' name='cidade' placeholder='Cidade'>
    </div> 

    <input class='btn btn-sucess' type='submit' value='Cadastrar'>
    
</form>

<%@include file="../master/rodape.jsp" %>