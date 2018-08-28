<%-- 
    Document   : index
    Created on : 28/08/2018, 10:48:54
    Author     : Alunos
--%>

<%@page import="java.util.List"%>
<%@page import="br.com.projeto.bean.ProdutoBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../master/master.jsp"%>

<table class="table">
    <thead>
        <tr>
            <th>#</th>
            <th>Nome</th>
            <th>Categoria</th>
            <th>Ação</th>
        </tr>
    </thead>
    <tbody>
        <%for (ProdutoBean produto : ((List<ProdutoBean>) request.getAttribute("produtos"))) {%>
        <tr>
            <td> <%=produto.getId()%></td>
            <td> <%=produto.getNome()%> </td>
            <td> <%=produto.getCategoria().getNome()%> </td>
            <td> 
            </td>
        </tr>
        <%}%>
    </tbody>
</table>





<%@include file="../master/rodape.jsp"%>