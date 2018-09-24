<%-- 
    Document   : registrarVenda
    Created on : 23/09/2018, 19:56:26
    Author     : patrick
--%>

<%@page import="br.com.projeto.dao.EstoqueDAO"%>
<%@page import="java.util.List"%>
<%@page import="br.com.projeto.bean.EstoqueBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file = "../master/master.jsp"%>
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
		<td>  </td>
		<td>  </td>
		<td>  </td>
		<td>  </td>
	    </tr>
            <%}%>
        </tbody>
    </table>
</div>

<%@include  file = "../master/rodape.jsp"%>
