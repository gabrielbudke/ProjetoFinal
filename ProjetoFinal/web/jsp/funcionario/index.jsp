<%-- 
/**
* @author Patrick Otavio do Nacimento(patricknascimento198@gmail.com)
* @date 2018-08-24
*/
--%>

<%@page import="br.com.projeto.dao.FuncionarioDAO"%>
<%@page import="br.com.projeto.bean.FuncionarioBean"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="../master/master.jsp" %>

<a href="/funcionario/cadastro" class="btn btn-success float-right">Novo Funcionario</a>
<table class="table table-hover" id="funcionario-index">
    <thead class="thead-light">
        <tr>
            <th scope="col">Id</th>
            <th scope="col">Funcionario</th>
            <th scope="col">Função</th>
            <th scope="col">Telefone</th>
            <th scope="col"><i class="fas fa-cogs"></i></th>
        </tr>
    </thead>
    <tbody>
<<<<<<< HEAD
        <%for(FuncionarioBean funcionario : funcionarios){%>
        <tr>
            <td><%= funcionario.getId() %></td>
            <td><%= funcionario.getNome() %></td>
            <td><%= funcionario.getFuncao() %></td>
            <td><%= funcionario.getTelefone() %></td>
            <td>
                <a class="btn btn-info" href="/funcionario/editar?id=<%=funcionario.getId()%>"><i class="fas fa-edit"></i>Editar</a>
                <a class="btn btn-danger" href="/funcionario/excluir?id=<%=funcionario.getId()%>"><i class="fas fa-trash-alt"></i> Excluir</a>
            </td>
        </tr>
        <%}%>
=======
>>>>>>> 5daca0cd89ab636c371cad21a33b7eac76efad13
    </tbody>
</table>

    
<%@include file="../master/rodape.jsp" %>