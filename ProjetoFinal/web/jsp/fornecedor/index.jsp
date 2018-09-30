<%-- 
    Document   : index
    Created on : 24/08/2018, 09:51:28
    Author     : Patrick Nacimento
--%>

<%@page import="br.com.projeto.dao.FornecedorDAO"%>
<%@page import="br.com.projeto.bean.FornecedorBean"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../master/master.jsp"%>

<div class="col-md-12 col-sm-12 col-xs-12">
    <div class="x_panel">
        <div class="x_title">
            <h2>Fornecedores</h2>

            <div class="clearfix"></div>
        </div>
        <div class="x_content">
            <p class="text-muted font-13 m-b-30">
                Clique em "Novo Fornecedor" para cadastrar um fornecedor.
            </p>
            <div class="botao-novo-fornecedor">
                <a class="btn btn-success float-right" href="/fornecedor/cadastro" style="float: right">Novo Fornecedor&nbsp&nbsp<i class="fa fa-plus-square"></i></a>
            </div>

            <table id="fornecedor-index" class="table table-striped table-bordered dt-responsive nowrap" cellspacing="0" width="100%">
                <thead>
                    <tr>
                        <th>#</th>
                        <th>Nome</th>
                        <th>CNPJ</th>
                        <th>Telefone</th>
                        <th>E-mail</th>
                        <th> <i class="fa fa-cogs"></i></th>
                    </tr>
                </thead>
                <tbody>

                </tbody>
            </table>


        </div>
    </div>
</div>


<%@include file="../master/rodape.jsp" %>