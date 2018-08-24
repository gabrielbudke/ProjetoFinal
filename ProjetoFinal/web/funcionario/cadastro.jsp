<%-- 
    Document   : cadastro
    Created on : 24/08/2018, 07:47:28
    Author     : Alunos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../master/master.jsp" %>>


out.println("<label for='nome'><i class=''></i> Nome</label>");
         out.println("<input type='text' id='nome' name='nome' placeholder='Nome'>");
         out.println("<label for='snome'><i class='fa fa-envelope'></i> Sobrenome</label>");
         out.println("<input type='text' id='snome' name='sobrenome' placeholder='Sobrenome'>");
         out.println("<label for='cpf'><i class='fa fa-address-card-o'></i> CPF</label>");
         out.println("<input type='text' id='cpf' name='cpf' placeholder='CPF'>");
         out.println("<label for='email'><i class=''></i> E-mail</label>");
         out.println("<input type='text' id='email' name='email' placeholder='E-mail'>");
         out.println("<label for='telefone'><i class=''></i> Telefone</label>");
         out.println("<input type='number' id='telefone' name='telefone' placeholder='Telefone'>");
         out.println("<label for='function'><i class=''></i> Função</label>");
         out.println("<input type='text' id='function' name='funcao' placeholder='Função'>");