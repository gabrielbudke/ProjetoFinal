<%-- 
    Document   : cadastro
    Created on : 23/08/2018, 11:26:21
    Author     : Alunos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../master/master.jsp" %>
<label for='nome'><i class=''></i> Nome</label>
<input type='text' id='nome' name='nome' placeholder='Nome'>
<label for='cnpj'><i class='fa fa-address-card-o'></i> CNPJ</label>
<input type='text' id='cnpj' name='cnpj' placeholder='CNPJ'>
<label for='email'><i class=''></i> E-mail</label>
<input type='text' id='email' name='email' placeholder='E-mail'>
<label for='telefone'><i class=''></i> Telefone</label>
<input type='number' id='telefone' name='telefone' placeholder='Telefone'>

<%@include file="../master/rodape.jsp" %>
