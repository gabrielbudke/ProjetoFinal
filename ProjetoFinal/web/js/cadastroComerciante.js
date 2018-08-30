function validarCadastro() {
    if (validarCampoNome() == false || validarCampoSobrenome() == false) {
        event.preventDefault();
    }
}
function validarCampoNome() {
    var nome = document.getElementById("campo-nome").value;
    var quantidadeCaracteres = nome.length;


    apagarElementoSeExiste("span-campo-nome-menor-3");
    apagarElementoSeExiste("span-campo-nome-maior-100");

    if (quantidadeCaracteres < 3) {
        gerarSpan("span-campo-nome-menor-3",
                "Nome deve conter no mínimo 3 caracteres",
                "div-campo-nome");
                
        apagarClasse("campo-nome", "border-success");
        adicionarClasse("campo-nome", "border-danger");
        return false;
        
    } else if (quantidadeCaracteres > 100) {
        gerarSpan(
                "span-campo-nome-maior-100", "Nome deve conter no máximo 100 caracteres", "div-campo-nome");
        apagarClasse("campo-nome", "border-success");
        adicionarClasse("campo-nome", "border-danger");
        return false;
    } else {
        apagarClasse("campo-nome", "border-danger");
        adicionarClasse("campo-nome", "border-success");
        return true;
    }
}
