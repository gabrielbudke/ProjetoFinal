<%-- 
    Document   : cadastro
    Created on : 24/08/2018, 07:47:28
    Author     : Alunos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../master/master.jsp" %>>

<form action="/ProjetoFinal/funcionarios/store" method="POST">
<label for='nome'><i class=''></i> Nome</label>
         <input type='text' id='nome' name='nome' placeholder='Nome'>
        
         <div class = "form-group">
         <label for='snome'><i class='fa fa-envelope'></i> Sobrenome</label>
         <input type='text' id='snome' name='sobrenome' placeholder='Sobrenome'>
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
         <input type='number' id='telefone' name='telefone' placeholder='Telefone'>
         </div>
         
         <div class = "form-group">
         <label for='function'><i class=''></i> Função</label>
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
        <input type='number' id='numero' name='numero' placeholder='Numero'>
        </div>
         
        <div
        <label for='cidade'><i class=''></i> Cidade</label>
        <input type='text' id='cidade' name='cidade' placeholder='Cidade'>
        </div> 
</form>
<%@include file="../master/rodape.jsp" %>