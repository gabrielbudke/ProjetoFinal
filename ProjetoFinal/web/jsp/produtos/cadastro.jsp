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

<%List<CategoriaBean> categorias = new CategoriaDAO().obterTodos();%>
<form action="/produtos/store" method="POST">
    <div class="nav-item">
	<a href="/categoria/cadastro">Nova Categoria</a>
    </div>

    <div class = "form-group">
        <label for='campo-categoria'><i class='fa fa-address-card-o'></i> Categoria</label>
        <select type='text' class="form-control" id='campo-categoria' name='categoria' required='required' onfocusout='validarCapoCategoria()'>
            <option selected = 'selected' disabled='disable'></option>

	    <% for (CategoriaBean categoria : categorias) {%>
	    <option value=<%=categoria.getId()%>><%=categoria.getNome()%></option>
            <% }%>

        </select>
    </div>

    <div class = "form-group">
        <label for='campo-nome'><i class='fa fa-address-card-o'></i> Nome</label>
        <input type='text' id='campo-nome' name='nome' placeholder='Nome' required='required' onfocusout='validarCampoNome()'>
    </div>

    <%--<div>
	<label for="campo-quantidade"><i class='fa fa-address-card-o'></i>Quantidade</label>
        <input type='number' min='0' id='campo-quantidade' name='quantidade' placeholder='Quantidade' required='required' onfocusout='validarCampoQuantidade()'>
    </div>--%>

    <div class = "form-group">
        <label for='campo-preco'><i class='fa fa-address-card-o'></i>Preço</label>
        <input type='text' min='0' id='campo-preco' name='preco' placeholder='Preco' required='required' onfocusout='validarCampoPreco()'>
    </div>

    <input type="submit" value="Adicionar">

</form>


<%@include  file = "../master/rodape.jsp"%>