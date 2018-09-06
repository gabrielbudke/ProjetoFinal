<%-- 
    Document   : index
    Created on : 28/08/2018, 10:48:54
    Author     : Alunos
--%>

<%@page import="java.util.List"%>
<%@page import="br.com.projeto.bean.ProdutoBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../master/master.jsp"%>

<%%>
<div class="botao-novo-produto">
    <a class="btn btn-success float-right" href="/produtos/cadastro">Novo Produto <i class="fas fa-plus-square"></i></a>
</div>

<div style="margin:">
    <table class="table table-hover table-bordered">
    <thead class="thead-light">
        <tr>
            <%--<th>#</th>--%>
            <th>Categoria</th>
            <th>Nome</th>
            <th>Preço</th>
            <%--<th>Quantidade</th>--%>
            <th> <i class="fas fa-cogs"></i></th>
        </tr>
    </thead>
    <tbody>
        <%for (ProdutoBean produto : ((List<ProdutoBean>) request.getAttribute("produtos"))) {%>
        <tr>
            <%--<td> <%=produto.getId()%></td>--%>
            <td> <%=produto.getCategoria().getNome()%> </td>
            <td> <%=produto.getNome()%> </td>
            <td> <%=produto.getPreco()%> </td>    
            <%--<td> <%=produto.getQuantidade()%></td>--%>
            <td> 
                <a class="btn btn-info"  href="/produtos/editar?id=<%=produto.getId()%>"><i class="fas fa-edit"></i> Editar</a>
            </td>
        </tr>
        <%}%>
    </tbody>
</table>
</div>




<%@include file="../master/rodape.jsp"%>