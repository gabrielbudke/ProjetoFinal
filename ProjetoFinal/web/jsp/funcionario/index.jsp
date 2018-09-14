<%-- 
/**
* @author Patrick Otavio do Nacimento(patricknascimento198@gmail.com)
* @date 2018-08-24
*/
--%>

<%@page import="br.com.projeto.dao.FuncionarioDAO"%>
<%@page import="br.com.projeto.bean.FuncionarioBean"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="../master/master.jsp" %>


<table class="table table-hover dataTable" id="funcionario-index">
    <thead class="thead-light">
        <tr>
            <th scope="col">Id</th>
            <th scope="col">Funcionario</th>
            <th scope="col">Função</th>
            <th scope="col">Telefone</th>
            <th scope="col"><i class="fas fa-cogs"></i></th>
        </tr>
    </thead>
    <tbody>
    <a href="/funcionario/cadastro" class="btn btn-success float-right">Novo Funcionario</a>
    </tbody>
</table>

    
<%@include file="../master/rodape.jsp" %>