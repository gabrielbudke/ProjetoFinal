<%-- 
/**
* @author Patrick Otavio do Nacimento(patricknascimento198@gmail.com)
* @date 2018-08-27
*/
--%>

<%@page import="br.com.projeto.dao.ComercianteDAO"%>
<%@page import="br.com.projeto.bean.ComercianteBean"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../master/master.jsp" %>
<% List<ComercianteBean> comerciante = new ComercianteDAO().obterTodos(); %>



<%@include file="../master/rodape.jsp" %>
