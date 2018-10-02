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

<div class="modal fade" id="saida-modal" tabindex="-1" role="dialog" aria-labelledby="modalSaida" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="modalSaida">Nova Saída</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form id="validacao-saida-form-func" action="/estoque/saida" method="post"> <!-- Caminho POST para CategoriaStore -->
                    <div class="form-group">
                        <input type="text" class="form-control" readonly value="Saida" name="tipo">
                    </div>
                    <div class="form-group">
                        <label for="recipient-name" class="col-form-label">Selecione o produto*</label>
                        <select name="produtoSaida" id="" class="form-control">
                            <option selected="selected" disabled="disabled"></option>
                            <% for (ProdutoBean produto : produtos) {%>
                            <option value=<%=produto.getId()%>><%=produto.getNome()%></option>
                            <% }%>
                        </select>
                    </div>
                    <div>
                        <label for="campo-quantidade" class="col-form-label">Quantidade*</label>
                        <input type="number" class="form-control" id="campo-quantidade" name="quantidade">
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-danger" data-dismiss="modal">Fechar</button>
                        <input type="submit" name="" class="btn btn-success" value="Adicionar">
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<%-- ------------------------------------------------------------------------------------------------%>
<div class="modal fade" id="entrada-modal" tabindex="-1" role="dialog" aria-labelledby="modalEntrada" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="modalEntrada">Nova Entrada</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form id="validacao-entrada-form-func" action="/estoque/entrada" method="post"> <!-- Caminho POST para CategoriaStore -->
                    <div class="form-group">
                        <input type="text" class="form-control" readonly value="Entrada" name="tipo">
                    </div>
                    <div class="form-group">
                        <label for="recipient-name" class="col-form-label">Selecione o produto*</label>
                        <select name="produtoEntrada" id="" class="form-control">
                            <option selected="selected" disabled="disabled"></option>
                            <% for (ProdutoBean produto : produtos) {%>
                            <option value=<%=produto.getId()%>><%=produto.getNome()%></option>
                            <% }%>
                        </select>
                    </div>
                    <div>
                        <label for="campo-quantidade" class="col-form-label">Quantidade*</label>
                        <input type="number" min='0' class="form-control" id="campo-quantidade" name="quantidade">
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-danger" data-dismiss="modal">Fechar</button>
                        <input type="submit" name="" class="btn btn-success" value="Adicionar">
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<%-- <%@include file="../master/rodape.jsp" --%>