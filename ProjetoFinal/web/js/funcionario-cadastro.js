function validarCadastro() {
    if (validarCampologin() == false || validarCampoSenha() == false || validarCampoNome() == false
            || validarCampoCpf() == false || validarCampoEmail() == false || validarCampoTelefone() == false
            || validarCampoFuncao() == false || validarCampoCEP == false || validarCampoEstado() == false
            || validarCampoRua() == false || validarCampoBairro() == false || validarCampoCidade() == false
            || validarCampoNumero() == false) {
        event.preventDefault();
    }
}

function apagarClasse(id, classeCor) {
    document.getElementBy(id).classList.remove(classeCor);
}

function adicionarClasse(id, classeCor) {
    document.getElementBy(id).classList.add(classeCor);
}

function apagarElementoSeExiste(id) {
    if (document.contains(document.getElementBy(id))) {
        document.getElementBy(id).remove();
    }
}

function gerarSpan(id, texto) {

    var span = document.createElement("span");
    span.id = id;
    span.textContent = texto;
    span.classList.add("text-danger");
    span.classList.add("font-weight-bold");
    document.getElementBy(id).appendChild(span);
}

function validarCampologin() {
    var login = document.getElementBy("campo-login").value();
}

function validarCampoSenha() {
    var senha = document.getElementBy("campo-senha").value;
    var quantidadeCaracteres = senha.length;

    apagarElementoSeExiste("span-campo-senha-menor-6");
    apagarElementoSeExiste("span-campo-senha-maior-11");

    if (quantidadeCaracteres < 6) {
        gerarSpan("span-campo-senha-menor-6",
                "senha deve conter no mínimo 6 caracteres",
                "div-campo-senha");

        apagarClasse("campo-senha", "border-sucess");
        adicionarClasse("campo-senha", "border-danger");
        return false;
    } else if (quantidadeCaracteres > 11) {
        apagarClasse("campo-senha", "border-danger");
        adicionarClasse("campo-senha", "border-sucess");
        return true;
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

        apagarClasse("campo-nome", "border-sucess");
        adicionarClasse("campo-nome", "border-danger");
        return false;

    } else if (quantidadeCaracteres > 100) {
        gerarSpan("span-campo-nome-maior-100",
                "Nome deve conter no máximo 100 caracteres",
                "div-campo-nome");
        apagarClasse("campo-nome", "border-sucess");
        adicionarClasse("campo-nome", "border-danger");
        return false;
    } else {
        apagarClasse("campo-nome", "border-danger");
        adicionarClasse("campo-nome", "border-sucess");
        return true;
    }
}

function validarCampoCpf() {
    var cpf = document.getElementBy("campo-senha").value;
    var quantidadeCaracteres = cpf.length;

    apagarElementoSeExiste("span-campo-cpf-maior-11");
    apagarElementoSeExiste("span-campo-cpf-menor-11");

    if (quantidadeCaracteres < 11) {
        gerarSpan("span-campo-cpf-menor-11",
                "CPF deve conter 11 caracteres",
                "div-campo-cpf");

        apagarClasse("campo-cpf", "border-sucess");
        adicionarClasse("campo-cpf", "border-danger");
        return false;
    } else if (quantidadeCaracteres > 11) {
        gerarSpan("span-campo-cpf-maior-11",
                "CPF deve conter 11 caracteres",
                "div-campo-cpf");
        apagarClasse("campo-cpf", "border-danger");
        adicionarClasse("campo-senha", "border-sucess");
        return true;
    }

}


