<%-- 
    Document   : comercianteConta
    Created on : 25/09/2018, 10:19:43
    Author     : Alunos
--%>

<%@page import="br.com.projeto.dao.FuncionarioDAO"%>
<%@page import="java.util.List"%>
<%@page import="br.com.projeto.bean.FuncionarioBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../master/master.jsp"%>

<%List<FuncionarioBean> funcionarios = new FuncionarioDAO().obterTodos(); %>
<div id="tabela">
    <table class="table table-hover table-bordered" id="funcionario-index">
        <thead class="thead-dark">
            <tr>
                <th scope="col">Nome</th>
                <th scope="col">Função</th>
                <th scope="col">Telefone</th>
                 </thead>
        <tbody>
            
            <% for(FuncionarioBean funcionario : (List<FuncionarioBean>)request.getAttribute("funcionarios")) {%>
	    <tr>
		<td> <%=((FuncionarioBean) request.getSession().getAttribute("funcionario")).getNome()%></td>
		<td> <%=((FuncionarioBean) request.getSession().getAttribute("funcionario")).getFuncao() %> </td>
		<td> <%=((FuncionarioBean) request.getSession().getAttribute("funcionario")).getTelefone() %> </td>
	    </tr>
            <%}%>
        </tbody>
    </table>
</div>
            
<%@include  file = "../master/rodape.jsp"%>