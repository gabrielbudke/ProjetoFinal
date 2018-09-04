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
<%List<ProdutoBean> produtos = new ProdutoDAO().obterTodos(); %>

<a href="">Add</a>
<div>
    <table class="table">
        <thead>
            <th>Tipo</th>    
            <th>Produto</th>    
            <th>ValorUn.</th>    
            <th>Quantidade</th>
            <th>Acao</th>
        </thead>
        <tbody>
            
            <% for(ProdutoBean produto : produtos) {%>
	    <tr>
		<td><% //entrada ou saida %></td>
		<td><% //produto %></td>
		<td><% //valor un %></td>
		<td><% // quantidade %></td>
		<td><% // valor total %></td>
		<td><% // açao %></td>
	    </tr>
            <%}%>
        </tbody>
    </table>
</div>

<%@include file="../master/rodape.jsp" %>
