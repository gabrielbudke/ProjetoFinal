<%-- 
    Document   : index
    Created on : 28/08/2018, 10:48:54
    Author     : Patrick Nacimento
--%>

<%@page import="java.util.List"%>
<%@page import="br.com.projeto.bean.ProdutoBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../master/master.jsp"%>

<div class="col-md-12 col-sm-12 col-xs-12">
    <div class="x_panel">
        <div class="x_title">
            <h2>Produtos</h2>

            <div class="clearfix"></div>
        </div>
        <div class="x_content">
            <p class="text-muted font-13 m-b-30">
                Clique em "Novo Produto" para cadastrar um produto e "Exportar" para exportar a tabela.
            </p>

            <div id="tabela">
                <table id="produtos-index" class="table table-striped table-bordered dt-responsive nowrap" cellspacing="0" width="100%">
                    <thead>
                        <tr>
                            <th>Categoria</th>
                            <th>Nome</th>
                            <th>Preço</th>
                            <th> <i class="fa fa-cogs"></i></th>
                        </tr>
                    </thead>
                    <tbody>

                    <div class="btn-group btn-group-toggle botao-novo-produto" style="float: right;">
                        <a class="btn btn-success float-left" href="/produtos/cadastro">Novo Produto &nbsp<i class="fa fa-plus-square"></i></a>

                        <a class="btn btn-primary float-left" type="button" id="exportar" value="Exportar">Exportar &nbsp;<i class="fas fa-file-export"></i></a>

                    </div>



                    </tbody>
                </table>
            </div>

        </div>
    </div>
</div>


<%@include file="../master/rodape.jsp"%>