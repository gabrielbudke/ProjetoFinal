<%-- 
    Document   : novaVenda
    Created on : 21/09/2018, 10:54:46
    Author     : Alunos
--%>

<%@page import="br.com.projeto.dao.EstoqueDAO"%>
<%@page import="br.com.projeto.bean.EstoqueBean"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../master/master.jsp" %>

<%List<EstoqueBean> estoques = new EstoqueDAO().obterTodos(); %>

<div>
    <table class="table table-hover table-bordered" id="estoque-index">
        <thead class="thead-light">  
            <th>Produto</th>    
            <th>ValorUn.</th>    
            <th>Quantidade</th>
            <th>Valor Total</th>
        </thead>
        <tbody>
            
            <% for(EstoqueBean estoque : estoques) {%>
	    <tr>
		<td> vendido </td>
		<td> vendido </td>
		<td> vendido </td>
		<td> vendido </td>
	    </tr>
            <%}%>
        </tbody>
    </table>
</div>

<%@include file="../master/rodape.jsp" %> 


