/* 
 produtos-cadastro
 */
function validarFormulario() {
    if (validarCampoCategoria() == false || validarCampoNome() == false || validarCampoQuantidade() == false
            || validarCampoPreco() == false) {
        event.preventDefault();
    }
}
function validarCampoCategoria() {
    
    }

function validarCampoNome() {
    var nome = document.getElementById("campo-nome").value;
}

function validarCampoQuantidade() {
    var quantidade = document.getElementById("campo-quantidade").value;
}

function validarCampoPreco() {
    var preco = document.getElementById("campo-preco").value;
}

