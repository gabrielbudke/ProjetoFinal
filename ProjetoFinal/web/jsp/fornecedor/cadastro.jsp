<%--
    Document   : cadastro
    Created on : 23/08/2018, 11:26:21
    Author     : Alunos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../master/master.jsp" %>
<form id="validacao-fornecedor-form-func" action="/fornecedor/store" method="post">
    <div class='form-row'>
        <div class="form-group col-md-6">
            <label for='campo-cnpj'><i class='fa fa-address-card-o'></i> CNPJ*</label>
            <input type='text' id='campo-cnpj' name='cnpj' placeholder='CNPJ' class='form-control'>
        </div>
        <div class="form-group col-md-6">
            <label for='campo-nome'><i class=''></i> Nome*</label>
            <input type='text' id='campo-nome' name='nome' placeholder='Nome' class='form-control'>
        </div>
    </div>
    <div class="form-group">
        <label for='campo-email'><i class=''></i> E-mail*</label>
        <input type='email' id='campo-email' name='email' placeholder='E-mail' class='form-control'>
    </div>
    <div class="form-group">
        <label for='campo-telefone'><i class=''></i> Telefone*</label>
        <input type='text' id='campo-telefone' name='telefone' placeholder='Telefone' class='form-control'>
    </div>
    <input class='btn btn-success' type="submit" value="Novo Fornecedor">
</form>
<%@include file="../master/rodape.jsp" %>
