<%-- 
/**
* @author Patrick Otavio do Nacimento(patricknascimento198@gmail.com)
* @date 2018-08-24
*/
--%>

<%@page import="java.util.List"%>
<%@page import="br.com.projeto.dao.EstoqueDAO"%>
<%@page import="br.com.projeto.bean.EstoqueBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../master/master.jsp" %>

<% List<EstoqueBean> estoques = new EstoqueDAO().obterTodos(); %>

<div>
    <table class="table">
        <thead>
            <th>Categoria</th>    
            <th>Produto</th>    
            <th>ValorUn.</th>    
            <th>Quantidade</th>
            <th>Acao</th>
        </thead>
        <tbody>
        <>
        <!-- Precisa ser feito tabela de estoque
            <% for(EstoqueBean estoque: estoques){ %>
            <tr>
                <td><%=estoque.getTipo() %></td>
                <td><%=estoque.getProduto() %></td>
                <td><%=estoque.getQuantidade() %></td>
                <td>
                <a href=></a>
                </td>
            </tr>
            <% } %>
        -->
            
        </tbody>
    </table>
</div>
<%@include file="../master/rodape.jsp" %>
