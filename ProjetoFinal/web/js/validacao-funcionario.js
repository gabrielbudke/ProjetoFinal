$("#validacao-form-func").validate({

    errorClass: "text-danger border-danger",
    errorElementClass: "text-danger border-danger",
    validClass: "text-success border-success",
    validElementClass: "text-success border-success",
    rules: {
        login: {
            required: true,
            minlength: 3,
            maxlength: 20
        },
        senha: {
            required: true,
            minlength: 8,
            maxlength: 40
        },
        nome: {
            required: true,
            minlength: 3,
            maxlength: 100
        },
        cpf: {
            required: true
        },
        email: {
            required: true,
            email: true
        },
        telefone: {
            required: true
        },
        funcao: {
            required: true
        },
        cep: {
            required: true
        },
        estado: {
            required: true
        },
        rua: {
            required: true
        },
        bairro: {
            required: true
        },
        cidade: {
            required: true
        },
        numero: {
            required: true,
            minlength: 1,
            maxlength: 20

        }

    },
    messages: {
        login: {
            required: "Campo obrigatório*",
            minlength: "login deve conter no minimo {0} caracteres*",
            maxlength: "login deve conter no maximo {0} caracteres*"
        },
        senha: {
            required: "Campo obrigatório*",
            minlength: "senha deve conter no minimo {0} caracteres*",
            maxlength: "senha deve conter no maximo {0} caracteres*"
        },
        nome: {
            required: "Campo obrigatório*",
            minlength: "Nome deve conter no minimo {0} caracteres*",
            maxlength: "Nome deve conter no maximo {0} caracteres*"
        },
        cpf: {
            required: "Campo obrigatório*"
        },
        email: {
            required: "Campo obrigatório*",
            email: "Insira um Email Válido."
        },
        telefone: {
            required: "Campo obrigatório*"
        },
        funcao: {
            required: "Campo obrigatório*"
        },
        cep: {
            required: "Campo obrigatório*"
        },
        estado: {
            required: "Campo obrigatório*"
        },
        rua: {
            required: "Campo obrigatório*"
        },
        bairro: {
            required: "Campo obrigatório*"
        },
        cidade: {
            required: "Campo obrigatório*"
        },
        numero: {
            required: "Campo obrigatório*",
            minlength: "Numero deve conter no minimo {0} caracteres*",
            maxlength: "Numero deve conter no maximo {0} caracteres*"
        }

    }
});

$(function () {

    $("#campo-cep").on("focusout", function () {

        processarCep();
    });
    function processarCep() {

        $cep = $("#campo-cep").val();
        $.ajax({
            url: "https://viacep.com.br/ws/" + $cep + "/json/",
            method: "get",
            success: function (data) {
                $("#campo-logradouro").val(data.logradouro);
                $("#campo-bairro").val(data.bairro);
                $("#campo-cidade").val(data.localidade);
                $("#campo-estado").val(data.uf);
            }
        });
    }
});

$(function () {
    $("#campo-cpf").mask("999.999.999-99");

    $("#campo-telefone").mask("(99)9999-99999");
    
    $("#campo-cep").mask("99999-999");
});