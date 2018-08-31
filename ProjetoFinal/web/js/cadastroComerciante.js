function validarCadastro() {
    if (validarCampoNome() == false || validarCampoCpf() == false) {
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

function validarCampoCpf() {
    var cpf = document.getElementById("campo-cpf").value;
    var quantidadeCaracteres = cpf.length;


    apagarElementoSeExiste("span-campo-cpf-maior-11");
    apagarElementoSeExiste("span-campo-cpf-menor-11");

    if (quantidadeCaracteres < 11) {
        gerarSpan("span-campo-cpf-menor-11",
                "CPF deve conter 11 caracteres",
                "div-campo-cpf");
                
        apagarClasse("campo-cpf", "border-success");
        adicionarClasse("campo-cpf", "border-danger");
        return false;
        
    } else if (quantidadeCaracteres > 11) {
        gerarSpan(
                "span-campo-cpf-maior-11", "CPF deve conter 11 caracteres", "div-campo-cpf");
        apagarClasse("campo-cpf", "border-success");
        adicionarClasse("campo-cpf", "border-danger");
        return false;
    } else {
        apagarClasse("campo-cpf", "border-danger");
        adicionarClasse("campo-cpf", "border-success");
        return true;
    }
}

function apagarClasse(id, classeCor) {
    document.getElementById(id).classList.remove(classeCor);

}

function adicionarClasse(id, classeCor) {
    document.getElementById(id).classList.add(classeCor);
}

function apagarElementoSeExiste(id) {
    if (document.contains(document.getElementById(id))) {
        document.getElementById(id).remove();
    }
}

function gerarSpan(id, texto, idPai) {
	
    var span = document.createElement("span");
    span.id = id;
    span.textContent = texto;
    span.classList.add("text-danger");
    span.classList.add("font-weight-bold");
    document.getElementById(idPai).appendChild(span);
}

$(function () {
    
    $("#cep").on("focusout", function () {

        processarCep();
    });
    function processarCep() {
               alert('asdasd');
        $cep = $("#cep").val();
        $.ajax({
            url: "https://viacep.com.br/ws/" + $cep + "/json/",
            method: "get",
            success: function (data) {
                $("#logradouro").val(data.logradouro);
                $("#cidade").val(data.localidade);
                $("#bairro").val(data.bairro);
                $("#campo-estado").val(data.uf);
                
            }
        });
    }
});
