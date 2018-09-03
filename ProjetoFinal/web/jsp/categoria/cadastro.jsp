<%-- 
    Document   : cadastro
    Created on : 27/08/2018, 11:18:29
    Author     : Logan Michel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../master/master.jsp" %>
<form action="/categoria/store" method="post">
    
    <div class="form-group">
	<label for='campo-categoria'><i class=''></i> Categoria</label>
	<input type='text' id='campo-categoria' name="categoria" required='required' onfocusout='validarCapoCategoria()'>
    </div>
	
    <input type="submit" value="Adicionar">
    
</form>
<%@include file="../master/rodape.jsp" %>