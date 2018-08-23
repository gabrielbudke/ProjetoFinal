<%-- 
    Document   : saida
    Created on : 23/08/2018, 07:48:06
    Author     : Alunos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../master/master.jsp" %>

<form action='saida.html' method='POST'>
    <div class="form-group">
        <!-- Campo para usuário selecionar o produto vendido -->
        <label for='campo-produto'>Produto</label>
        <select class="form-control border-primary" name='' id='campo-produto'>
            <option value=''></option>
            <option value='Babana'>Banana</option>
            <option value=''>Maça</option>
            <option value=''>Pera</option>
            <option value=''>Calabria</option>
            <option value=''>Laranja</option>
        </select>
    </div>
    <div class="form-group">
        <!--Campo para usuário lançar a quantidade de produtos vendidos -->
        <label for='campo-quantidade'>Quantidade</label>
        <input class="form-control border-primary" type='number' id='campo-quantidade' name='quantidade'>

        
    </div>
    <input class="btn btn-success float-right" type='submit' value='Adicionar'>
</form>	
<div>
    <!-- Tabela de saida do produto -->
    <table class="table table-striped">
        <thead>
            <th>Categoria</th>
            <th>Produto</th>
            <th>Quantidade</th>
            <th>Valor Un.</th>
            <th>Total</th>
        </thead>
        <tbody>
            
            
            <% for (ProdutoSaidaBean) %>
            <tr>
                <td>asddsd</td>
                <td>asdfsd</td>
                <td>asdsad</td>
                <td>asdas</td>
                <td>asdad</td>
            </tr>
        </tbody>
    </table>
</div> 
<div>
    <a class="btn btn-sucess float-right" href="#">Finalizar</>
</div>   

<%@include file="../master/rodape.jsp" %>




