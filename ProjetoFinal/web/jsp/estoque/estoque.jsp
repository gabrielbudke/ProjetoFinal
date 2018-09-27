<%--
/**
* @author Patrick Otavio do Nacimento(patricknascimento198@gmail.com)
* @date 2018-08-24
*/
--%>

<%@page import="br.com.projeto.dao.ProdutoDAO"%>
<%@page import="br.com.projeto.bean.ProdutoBean"%>
<%@page import="java.util.List"%>
<%@page import="br.com.projeto.dao.EstoqueDAO"%>
<%@page import="br.com.projeto.bean.EstoqueBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../master/master.jsp" %>

<%List<EstoqueBean> estoques = new EstoqueDAO().obterTodos(); %>

 <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Estoque </h2>
                    
                    <div class="clearfix"></div>
                  </div>

                  <div class="x_content">

                    

                    <div class="table-responsive">
                      <table id ="estoque-index" class="table table-striped jambo_table bulk_action">
                        <thead>
                          <tr class="headings">
                      <tr>      
                <th>Tipo<th>
                <th>Produto</th>    
                <th>ValorUn.</th>    
                <th>Quantidade</th>
                <th>Valor Total</th>
                    </tr>
                            
                          </tr>
                        </thead>

                        <tbody>
                          
            <% for (EstoqueBean estoque : estoques) {%>
            <tr>
                <td><%=estoque.getTipo() %><td>
                <td> <%=estoque.getProduto().getNome()%> </td>
                <td> <%=estoque.getProduto().getPreco()%> </td>
                <td> <%=estoque.getQuantidade()%> </td>
                <td> <%=estoque.valorTotal()%> </td>
            </tr>
            <%}%>
            <div class="botao-registrar-venda">
    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#entrada-modal">Entrada</button>
    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#saida-modal">Saída</button>
</div>
                        </tbody>
                      </table>
                    </div>
              
            
                  </div>
                </div>
              </div>
            
<%@include file="modal.jsp" %>
<%@include file="../master/rodape.jsp" %>
