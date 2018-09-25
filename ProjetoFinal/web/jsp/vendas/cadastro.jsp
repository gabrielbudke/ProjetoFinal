<%-- 
    Document   : novaVenda
    Created on : 21/09/2018, 10:54:46
    Author     : Patrick
--%>

<%@page import="br.com.projeto.dao.ProdutoDAO"%>
<%@page import="br.com.projeto.bean.ProdutoBean"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../master/master.jsp" %>
<%List<ProdutoBean> produtos = new ProdutoDAO().obterTodos(); %>

<form action="/vendas/store" method="POST">
    <div class="form-group">
        <label>Selecione produto:</label>
        <select class="form-control">
            <option selected="selected" disabled="disabled"></option>
            <% for (ProdutoBean produto : produtos) {%>
            <option value=<%=produto.getId()%>><%=produto.getNome()%></option>
            <% }%>
        </select>
        <div class ="form-group">
            <label for='campo-quantidade'><i class='fa fa-address-card-o'></i> Quantidade</label>
            <input type='number' class="form-control" id='campo-quantidade' name='quantidade' min=0 placeholder='Quantidade' required='required'> 
        </div>

        <input class="btn btn-success" type="submit" value="Concluir Venda">
    </div>
</form>
<%@include file="../master/rodape.jsp" %> 


