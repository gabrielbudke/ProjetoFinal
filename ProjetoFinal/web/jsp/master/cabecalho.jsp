<%-- 
    Document   : cabecalho
    Created on : 23/08/2018, 07:56:28
    Author     : Alunos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <img class="navbar-brand"  src="../../imagens/e-Stock.png" usemap='#workmap'>
  <map name='workmap'>
      <area shape="rect" coords="10,20,200,100" href="/home">
  </map>
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

      <li class="nav-item">
	  <a class="nav-link" href="/perfil">Perfil</a>
      </li>
      <li class="nav-item">
	  <a class="nav-link" href="/">Fale Conosco</a>
      </li>
      <li class="nav-item">
	  <a class="nav-link" href="/">Sobre</a>
      </li>
     

    </ul>
  </div>
</nav>