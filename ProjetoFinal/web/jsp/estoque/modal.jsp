<%-- 
    Document   : modal
    Created on : 26/09/2018, 08:12:11
    Author     : Alunos
--%>

<%@page import="br.com.projeto.dao.ProdutoDAO"%>
<%@page import="br.com.projeto.bean.ProdutoBean"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%List<ProdutoBean> produtos = new ProdutoDAO().obterTodos(); %>

<div class="modal fade" id="saida-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Nova Saída</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form action="/estoque/saida" method="post"> <!-- Caminho POST para CategoriaStore -->
                    <div class="form-group">
                        <input type="text" class="form-control" disabled="disabled" value="Saída" name="saida">
                    </div>
                    <div class="form-group">
                        <label for="recipient-name" class="col-form-label">Selecione o produto:</label>
                        <select name="produtoSAida" id="" class="form-control">
                            <option selected="selected" disabled="disabled"></option>
                            <% for (ProdutoBean produto : produtos) {%>
                            <option value=<%=produto.getId()%>><%=produto.getNome()%></option>
                            <% }%>
                        </select>
                    </div>
                    <div>
                        <label for="campo-quantidade" class="col-form-label">Quantidade:</label>
                        <input type="number" class="form-control" id="campo-quatidade">
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-dismiss="modal">Fechar</button>
                <input type="submit" name="" class="btn btn-success" value="Adicionar">
            </div>
        </div>
    </div>
</div>

<%-- ------------------------------------------------------------------------------------------------%>
<div class="modal fade" id="entrada-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Nova Entrada</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form action="/estoque/entrada" method="post"> <!-- Caminho POST para CategoriaStore -->
                    <div class="form-group">
                        <input type="text" class="form-control" disabled="disabled" value="Entrada" name="entrada">
                    </div>
                    <div class="form-group">
                        <label for="recipient-name" class="col-form-label">Selecione o produto:</label>
                        <select name="produtoEntrada" id="" class="form-control">
                            <option selected="selected" disabled="disabled"></option>
                            <% for (ProdutoBean produto : produtos) {%>
                            <option value=<%=produto.getId()%>><%=produto.getNome()%></option>
                            <% }%>
                        </select>
                    </div>
                    <div>
                        <label for="campo-quantidade" class="col-form-label">Quantidade:</label>
                        <input type="number" min='0' class="form-control" id="campo-quatidade">
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-dismiss="modal">Fechar</button>
                <input type="submit" name="" class="btn btn-success" value="Adicionar">
            </div>
        </div>
    </div>
</div>
<%@include file="../master/rodape.jsp" %>