<%-- 
    Document   : registrarVenda
    Created on : 23/09/2018, 19:56:26
    Author     : patrick
--%>

<%@page import="br.com.projeto.dao.VendasDAO"%>
<%@page import="br.com.projeto.bean.ProdutoBean"%>
<%@page import="br.com.projeto.bean.ProdutoBean"%>
<%@page import="br.com.projeto.bean.VendasBean"%>
<%@page import="java.util.List"%>
<%@page import="br.com.projeto.bean.EstoqueBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file = "../master/master.jsp"%>

<%List<VendasBean> vendas = new VendasDAO().obterTodos(); %>
<div>
    <table class="table table-hover table-bordered" id="estoque-index">
        <thead class="thead-light">  
            <th>Produto</th>    
            <th>Quantidade</th>
            <th>Valor Total</th>
        </thead>
        <tbody>
            
            <% for(VendasBean venda : vendas) {%>
	    <tr>
		<td> <%=venda.getProduto().getNome() %> </td>
		<td> <%=venda.getQuantidade() %> </td>
		<td> <%=venda.valorTotal() %> </td>
	    </tr>
            <%}%>
        </tbody>
    </table>
</div>

<%@include  file = "../master/rodape.jsp"%>
