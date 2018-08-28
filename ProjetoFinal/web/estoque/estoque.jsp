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
            
            <% for(EstoqueBean estoque : (List<EstoqueBean>)request.getAttribute("estoques")){%>
	    <tr>
		<td></td>
		<td><%%></td>
		<td></td>
		<td> <%=estoque.getQuantidade()%> </td>
		<td></td>
	    </tr>
            <%}%>
        </tbody>
    </table>
</div>

<%@include file="../master/rodape.jsp" %>
