<%-- 
    Document   : editar
    Created on : 06/09/2018, 09:47:33
    Author     : Patrick Nacimento
--%>

<%@page import="br.com.projeto.dao.FornecedorDAO"%>
<%@page import="br.com.projeto.bean.FornecedorBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../master/master.jsp"%>
<% 
    int id = Integer.parseInt(request.getParameter("id"));
    FornecedorBean produto = new FornecedorDAO().obterPeloId(id);%>
    


<%@include file="../master/rodape.jsp"%>