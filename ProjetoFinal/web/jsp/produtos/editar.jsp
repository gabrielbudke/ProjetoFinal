<%-- 
    Document   : editar
    Created on : 03/09/2018, 09:20:22
    Author     : Logan Michel
--%>

<%@page import="br.com.projeto.dao.ProdutoDAO"%>
<%@page import="br.com.projeto.bean.ProdutoBean"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../master/master.jsp"%>


<form action="/produtos/update" method="post">
    <input type="hidden" name="id" value="">
    <div>
        <label for="campo-categoria">Categoria</label>
        <input type="select" id="campo-categoria" name="categoria" value="">
    </div>
    <div>
        <label for="campo-nome">Nome</label>
        <input type="text" id="campo-nome" name="nome" value="">
    </div>
    <div>
        <label for="campo-quantidade">Quantidade</label>
        <input type="number" id="campo-quantidade" name="quantidade" value="">
    </div>
    <div>
        <label for="campo-preco">Preço</label>
        <input type="number" id="campo-preco" name="preco" value="">
    </div>
    
    <input type="submit" value="Alterar">
</form>





<%@include file="../master/rodape.jsp"%>