<%-- 
    Document   : cadastro
    Created on : 23/08/2018, 08:50:30
    Author     : Alunos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file = "../master/master.jsp"%>

<form action="/ProjetoFinal/produtos/store.html" method="POST">
    <div class = "form-group">
        <label for='cat'><i class=''></i> Categoria</label>
        <input type='text' id='categoria' name='categoria' placeholder='Categoria'>
    </div>

    <div class = "form-group">
        <label for='nome'><i class='fa fa-address-card-o'></i> Nome</label>
        <input type='text' id='nome' name='nome' placeholder='Nome'>
    </div>

    <div class = "form-group">
        <label for='preco'><i class=''></i> Preço</label>
        <input type='text' id='preco' name='preco' placeholder='Preco'>
    </div>
    
    <input class = "btn btn-success" type="submit" value="Novo">
</form>
    

<%@include  file = "../master/rodape.jsp"%>