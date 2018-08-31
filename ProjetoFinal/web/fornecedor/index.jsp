<%-- 
    Document   : index
    Created on : 24/08/2018, 09:51:28
    Author     : Alunos
--%>

<%@page import="br.com.projeto.dao.FornecedorDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="br.com.projeto.bean.FornecedorBean"%>
<%@page import="java.util.List"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="../master/master.jsp" %>
<% List<FornecedorBean> fornecedores = new FornecedorDAO().obterTodos(); %>

<a href="/fornecedor/cadastro">Novo Fornecedor</a>
<table>
    <thead>
        <tr>
            <th>#</th>
            <th>Nome</th>
            <th>CNPJ</th>
            <th>Telefone</th>
            <th>E-mail</th>
            <th>Ação</th>
        </tr>
    </thead>
    <tbody>
        <%for(FornecedorBean fornecedor : fornecedores){%>
        <tr>
            <td> <%=fornecedor.getId()%></td>
            <td> <%=fornecedor.getNome()%> </td>
            <td> <%=fornecedor.getCnpj()%> </td>
            <td> <%=fornecedor.getTelefone()%></td>
            <td> <%=fornecedor.getEmail()%></td>
            <td> 
                <a href="/fornecedor/editar">Editar</a>
                <a href="/fornecedor/excluir">Excluir</a>
            </td>
        </tr>
        <%}%>
    </tbody>
</table>

<%@include file="../master/rodape.jsp" %>