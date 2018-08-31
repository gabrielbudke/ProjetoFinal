<%-- 
/**
* @author Patrick Otavio do Nacimento(patricknascimento198@gmail.com)
* @date 2018-08-27
*/
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../master/master.jsp" %>


<form action="/comerciante/store" method="post">
    
        <link rel='stylesheet' type='text/css' href='/bootstrap/css/bootstrap.css'>
        <script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
        <script src='/js/cadastroComerciante.js'></script>
          
        
        <div class = "register Scroll">
            <div class="form-group">
            <label for='campo-login' ><i class=''></i> Login</label>
            <input type='text' id='campo-login' name='login' placeholder='Login'>
        </div>
        <div class="form-group">
            <label for='campo-senha' ><i class=''></i> Senha</label>
            <input type='text' id='campo-senha' name='senha' placeholder='Senha'>
        </div>
        <div id='div-campo-nome' class='form-group'>
            <label for='campo-nome'>Nome <span class='text-danger font-weight-bold'></span></label>
            <input class='form-control' type='text' id='campo-nome' name='nome' required='required' onfocusout='validarCampoNome()'>
        </div>
        <div id='div-campo-cpf' class='form-group'>
            <label for='campo-cpf'>Cpf <span class='text-danger font-weight-bold'></span></label>
            <input class='form-control' type='text' id='campo-cpf' name='cpf' required='required' onfocusout='validarCampoCpf()'>
        </div>
        <div class="form-group">
            <label for='campo-email'><i class=''></i> E-mail</label>
            <input type='text' id='campo-email' name='email' placeholder='E-mail'>
        </div>
        <div class="form-group">
            <label for='campo-telefone'><i class=''></i> Telefone</label>
            <input type='text' id='campo-telefone' name='telefone' placeholder='(47)3333-3333'>
        </div>
        <div class="form-group">
            <label for='campo-cep'><i class=''></i> Cep</label>
            <input type='text' id='cep' name='cep' placeholder='cep'>
        </div>
        <div class="form-group">
            <label for='logradouro'><i class=''></i> Rua</label>
            <input type='text' id='logradouro' name='rua' placeholder='Rua'>
        </div>
        <div class="form-group">
            <label for='campo-numero'><i class=''></i> Numero</label>
            <input type='tel' id='numero' name='numero' placeholder='numero'>
        </div>
        <div class="form-group">
            <label for='campo-bairro'><i class=''></i> Bairro</label>
            <input type='text' id='bairro' name='bairro' placeholder='Bairro'>
        </div>
        <div>
            <label for="bairro">Bairro</label>
            <input id="bairro" type="text" required/>
        </div>    
        <div class="form-group">
            <label for='campo-cidade'><i class=''></i> Cidade</label>
            <input type='text' id='cidade' name='cidade' placeholder='Cidade'>
        </div>
        <div class="form-group">
            <label for='campo-estado'>Estado</label>
            <input type='text' id='campo-estado' name='estado' placeholder='Estado'>
        </div>
            <input type="submit" value="Cadastrar">
        </div>
        
</form>

<script type="text/javascript">
        $("#cep").focusout(function(){
                //Início do Comando AJAX
                $.ajax({
                        //O campo URL diz o caminho de onde virá os dados
                        //É importante concatenar o valor digitado no CEP
                        url: 'https://viacep.com.br/ws/'+$(this).val()+'/json/unicode/',
                        //Aqui você deve preencher o tipo de dados que será lido,
                        //no caso, estamos lendo JSON.
                        dataType: 'json',
                        //SUCESS é referente a função que será executada caso
                        //ele consiga ler a fonte de dados com sucesso.
                        //O parâmetro dentro da função se refere ao nome da variável
                        //que você vai dar para ler esse objeto.
                        success: function(resposta){
                                //Agora basta definir os valores que você deseja preencher
                                //automaticamente nos campos acima.
                                $("#logradouro").val(resposta.logradouro);
                                $("#complemento").val(resposta.complemento);
                                $("#bairro").val(resposta.bairro);
                                $("#cidade").val(resposta.localidade);
                                $("#uf").val(resposta.uf);
                                //Vamos incluir para que o Número seja focado automaticamente
                                //melhorando a experiência do usuário
                                $("#numero").focus();
                        }
                });
        });
</script>
    
<%@include file="../master/rodape.jsp" %>

