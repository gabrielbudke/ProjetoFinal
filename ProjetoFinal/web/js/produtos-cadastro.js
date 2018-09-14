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

function validarCampoPreco(num) {

    var preco = document.getElementById("campo-preco").value;
    
    try {
        if(isNaN(preco)) throw "Somente Números";
        preoco = Numeber(preco);
    } catch (e) {
        
        
    }


}