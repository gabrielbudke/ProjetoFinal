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


<div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Funcionários</h2>
                   
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                    <p class="text-muted font-13 m-b-30">
                     Clique em "Novo Funcionário" para cadastrar um funcionário.
                    </p>
          
                    <table id="funcionario-index" class="table table-striped table-bordered dt-responsive nowrap" cellspacing="0" width="auto">
                      <thead>
                       <tr>
            <th scope="col">Id</th>
            <th scope="col">Funcionario</th>
            <th scope="col">Função</th>
            <th scope="col">Telefone</th>
            <th scope="col"><i class="fa fa-cogs"></i></th>
                              </tr>
                      </thead>
                      <tbody>
<<<<<<< HEAD
                      <a href="/funcionario/cadastro" class="btn btn-success float-left">Novo Funcionario &nbsp;<i class="fa fa-plus-square"></i></a>
=======
                      <a href="/funcionario/cadastro" class="btn btn-success float-right" style="float: right">Novo Funcionario&nbsp;&nbsp;<i class="fa fa-plus-square"></i></a>
>>>>>>> 0af5cf28dbe0435736e115162bb176529602c0c9
                      </tbody>
                    </table>
          
          
                  </div>
                </div>
              </div>
           
    
<%@include file="../master/rodape.jsp" %>