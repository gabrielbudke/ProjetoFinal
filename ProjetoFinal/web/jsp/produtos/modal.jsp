<%-- 
    Document   : modal
    Created on : 28/09/2018, 10:02:36
    Author     : Alunos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<div class="modal fade" id="categoria-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Adicionar Categoria</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form action="/categoria/store" method="post"> <!-- Caminho POST para CategoriaStore -->
                    <div class="form-group">
                        <label for="campo-categoria" class="col-form-label">Nova Categoria:</label>
                        <input type="text" class="form-control" id="campo-categoria" name="categoria">
                    </div>
                    <%-- 
                   
<div>
                        <table class="table table-hover">
                            <thead>
                                <tr>
                                    <th>Categoria</th>
                                    <th><!-- Colocar o icone das outras tabelas--></th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td><!-- Puxar as categorias do Banco de Dados --></td>
                                    <td><a href="#" class='btn btn-primary'><i class="fa fa-pen-square"></i></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
               
                    --%>  

                    <div class="modal-footer">
                        <button type="button" class="btn btn-danger" data-dismiss="modal">Fechar</button>
                        <input type="submit" name="" class="btn btn-success" value="Adicionar">
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<%@include file="../master/rodape.jsp"%>
