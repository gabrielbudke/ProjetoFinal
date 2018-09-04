<%-- 
    Document   : cabecalho
    Created on : 23/08/2018, 07:56:28
    Author     : Alunos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="/home">Home</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item">
        <a class="nav-link" href="/estoque">Estoque</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/fornecedor">Fornecedores</a>
      </li>
      <li class="nav-item">
          <a class="nav-link" href="/funcionario">Funcionarios</a>
      </li>
      <li class="nav-item">
	  <a class="nav-link" href="/produtos">Produtos</a>
      </li>
           <li class="nav-item">
	  <a class="nav-link" href="/usuario/logout">Sair</a>
      </li>
    </ul>
  </div>
</nav>