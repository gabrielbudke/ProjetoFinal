/* 
 produtos-cadastro
 */
function validarFormulario() {
    if (validarCampoCategoria() == null || validarCampoNome() == false || validarCampoQuantidade() == false
            || validarCampoPreco() == false) {
        event.preventDefault();
    }
}
function validarCampoCategoria() {
    var categoria = document.getElementById("campo-categoria").value;
    

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

