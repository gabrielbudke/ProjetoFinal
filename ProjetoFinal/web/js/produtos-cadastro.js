/* 
produtos-cadastro
 */
function validarFormulario(){
    if (validarCampoNome() == false || validarCampoQuantidade() == false || validarCampoPreco() == false){
        event.preventDefault();
    }
}

function validarCampoNome(){
    var nome = document.getElementById("campo-nome").value;
}

function validarCampoQuantidade(){
    var quantidade = document.getElementById("campo-quantidade").value;
}

function validarCampoPreco(){
    var preco = document.getElementById("campo-preco").value;
}

