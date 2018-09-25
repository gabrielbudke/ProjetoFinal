<%-- 
    Document   : index
    Created on : 28/08/2018, 10:48:54
    Author     : Patrick Nacimento
--%>

<%@page import="java.util.List"%>
<%@page import="br.com.projeto.bean.ProdutoBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../master/master.jsp"%>

<%%>
<div class="btn-group btn-group-toggle botao-novo-produto" style="float: right;">
    <a class="btn btn-success float-right" href="/produtos/cadastro">Novo Produto <i class="fa fa-plus-square"></i></a>
    <input class="btn btn-secondary float-right" type="button" id="exportar" value="Exportar">
</div>

<div id="tabela">
    <table class="table table-hover table-bordered" id="produtos-index">
        <thead class="thead-dark">
            <tr>
                <th>Categoria</th>
                <th>Nome</th>
                <th>Preço</th>
                <th> <i class="fa fa-cogs"></i></th>
            </tr>
        </thead>
        <tbody>
        </tbody>
    </table>
</div>
        
<div class="form form-group">
</div>


<%@include file="../master/rodape.jsp"%>