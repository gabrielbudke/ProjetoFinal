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
<%@include file="../master/master.jsp" %>>	
<% List<FornecedorBean> fornecedores = new FornecedorDAO().obterTodos(id) <>();%>
<table>
    <thead>
        <tr>
            <th>Nome</th>
            <th>Telefone</th>
            <th>E-mail</th>
        </tr>
    </thead>
    <tbody>
        <%for(int i = 0; i < fornecedores)%>
        <tr>
            <td></td>
        </tr>
    </tbody>
</table>

<%@include file="../master/rodape.jsp" %>>