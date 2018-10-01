<%-- 
    Document   : cadastro
    Created on : 23/08/2018, 08:50:30
    Author     : Alunos
--%>

<%@page import="br.com.projeto.dao.ProdutoDAO"%>
<%@page import="br.com.projeto.bean.ProdutoBean"%>
<%@page import="java.util.List"%>
<%@page import="br.com.projeto.bean.CategoriaBean"%>
<%@page import="br.com.projeto.dao.CategoriaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file = "../master/master.jsp"%>

<form id="validacao-novo-produto-form-func" action="/produtos/store" method="POST">
    <%List<CategoriaBean> categorias = new CategoriaDAO().obterTodos(); %>


    <div class = "form-group">
        <label for='campo-categoria'><i class='fa fa-address-card-o'></i> Categoria*</label>
        <select name="categoria" class="form-control">
            <option selected="selected" disabled="disabled"></option>
            <% for (CategoriaBean categoria : categorias) {%>
            <option value=<%=categoria.getId()%>><%=categoria.getNome()%></option>
            <% }%>
        </select>
    </div>
    <div>
        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#categoria-modal">Nova Categoria</button>
    </div>

    <div class = "form-group">
        <label for='campo-nome'><i class='fa fa-address-card-o'></i> Nome do produto*</label>
        <input type='text' class="form-control" id='campo-nome' name='nome' placeholder='Nome' required='required' onfocusout='validarCampoNome()'>
    </div>

    <div class = "form-group">
        <label for='campo-preco'><i class='fa fa-address-card-o'></i>Preço*</label>
        <input type='number' min='0' class="form-control" id='campo-preco' name='preco' placeholder='Preço' required='required' onfocusout='validarCampoPreco()'>
    </div>

    <input class="btn btn-success" type="submit" value="Adicionar">

</form>

<%@include file = "modal.jsp"%>
<%@include  file = "../master/rodape.jsp"%>