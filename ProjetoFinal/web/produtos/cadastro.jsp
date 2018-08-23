<%-- 
    Document   : cadastro
    Created on : 23/08/2018, 08:50:30
    Author     : Alunos
--%>

<%@page import="br.com.projeto.bean.CategoriaBean"%>
<%@page import="br.com.projeto.dao.CategoriaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file = "../master/master.jsp"%>

<form action="/ProjetoFinal/produtos/store" method="POST">
    <div class = "form-group">
        <label for='campo-categoria'><i class='fa fa-address-card-o'></i> Categoria</label>
        <select type='text' class="form-control" id='campo-categoria' name='categoria'></select>
    </div>

    <div class = "form-group">
        <label for='campo-nome'><i class='fa fa-address-card-o'></i> Nome</label>
        <input type='text' id='campo-nome' name='nome' placeholder='Nome'>
    </div>

    <div class = "form-group">
        <label for='campo-preco'><i class='fa fa-address-card-o'></i> Preço</label>
        <input type='text' id='campo-preco' name='preco' placeholder='Preco'>
    </div>
    
    <div class = "form-group">
        <label for='campo-quantidade'><i class='fa fa-address-card-o'></i> Quantidade</label>
        <input type='text' id = 'campo-quantidade' name = 'quantidade' placeholder= 'Quantidade'>
    </div>
    
    <input class = "btn btn-success" type="submit" value="Novo">
    
</form>
    

<%@include  file = "../master/rodape.jsp"%>