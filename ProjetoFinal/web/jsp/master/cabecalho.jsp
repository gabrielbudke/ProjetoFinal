<%--
    Document   : cabecalho
    Created on : 23/08/2018, 07:56:28
    Author     : Alunos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div>
        <a class="navbar-brand" href="/home">
            <img src="../../imagens/e-Stock.png" alt="">
        </a>
    </div>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item">
                <a class="nav-link" href="/home">Visão Geral</a>
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
        </ul>
        <ul class="navbar-nav mr-auto">
          <li class="nav-item nav-profile dropdown">
            <a class="nav-link dropdown-toggle" id="profileDropdown" href="#" data-toggle="dropdown" aria-expanded="false">
              <div class="nav-profile-img">
                <img src="../../imagens/person-f1lat.png" alt="image">
                <span class="availability-status online"></span>             
              </div>
              <div class="nav-profile-text">
                <p class="mb-1 text-black">User</p>
              </div>
            </a>
            <div class="dropdown-menu navbar-dropdown" aria-labelledby="profileDropdown">
              <a class="dropdown-item" href="#">
                <i class="mdi mdi-cached mr-2 text-success"></i>
                Conta
              </a>
              <div class="dropdown-divider"></div>
              <a class="dropdown-item" href="/usuario/logout">
                <i class="mdi mdi-logout mr-2 text-primary"></i>
                Sair
              </a>
                </nav>
