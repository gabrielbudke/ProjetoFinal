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
<%List<EstoqueBean> estoques = new EstoqueDAO().obterTodos(); %>
<a href="/ProjetoFinal/produto/cadastro">Novo Produto</a>
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
            
            <% for(EstoqueBean estoque : estoques) {%>
	    <tr>
		<td><%%></td>
		<td><%%></td>
		<td><%%></td>
		<td><%%></td>
		<td><%%></td>
	    </tr>
            <%}%>
        </tbody>
    </table>
</div>

<%@include file="../master/rodape.jsp" %>
