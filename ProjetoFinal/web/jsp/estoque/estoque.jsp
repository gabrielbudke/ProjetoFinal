<%--
/**
* @author Patrick Otavio do Nacimento(patricknascimento198@gmail.com)
* @date 2018-08-24
*/
--%>

<%@page import="br.com.projeto.dao.ProdutoDAO"%>
<%@page import="br.com.projeto.bean.ProdutoBean"%>
<%@page import="java.util.List"%>
<%@page import="br.com.projeto.dao.EstoqueDAO"%>
<%@page import="br.com.projeto.bean.EstoqueBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../master/master.jsp" %>

<%List<EstoqueBean> estoques = new EstoqueDAO().obterTodos(); %>

<div class="botao-registrar-venda">
    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#entrada-modal">Entrada</button>
    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#saida-modal">Saída</button>
</div>

<div>
    <table class="table table-hover table-bordered" id="estoque-index">
        <thead class="thead-light">  
            <tr>
                <th>Tipo<th>
                <th>Produto</th>    
                <th>ValorUn.</th>    
                <th>Quantidade</th>
                <th>Valor Total</th>
            </tr>
        </thead>
        <tbody>

            <% for (EstoqueBean estoque : estoques) {%>
            <tr>
                <td><%=estoque.getTipo() %><td>
                <td> <%=estoque.getProduto().getNome()%> </td>
                <td> <%=estoque.getProduto().getPreco()%> </td>
                <td> <%=estoque.getQuantidade()%> </td>
                <td> <%=estoque.valorTotal()%> </td>
            </tr>
            <%}%>
        </tbody>
    </table>
</div>
<%@include file="modal.jsp" %>
<%@include file="../master/rodape.jsp" %>
