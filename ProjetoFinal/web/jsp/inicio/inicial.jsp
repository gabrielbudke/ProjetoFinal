<%-- 
    Document   : inicial
    Created on : 31/08/2018, 11:11:02
    Author     : Alunos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="/jsp/master/master.jsp" %>
<div class ="inicial"><center><h1>Seja bem-vindo(a), <%= ((FuncionarioBean) request.getSession().getAttribute("funcionario")).getNome()%>.</h1></center></div>
<%@include file="/jsp/master/rodape.jsp" %>