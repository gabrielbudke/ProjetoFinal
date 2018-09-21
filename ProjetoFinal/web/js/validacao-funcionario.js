$("#validacao-form-func").validate({

    errorClass: "text-danger border-danger",
    errorElementClass: "text-danger border-danger",
    validClass: "text-success border-success",
    validElementClass: "text-success border-success",
    rules: {
        login: {
            required: true,
            minlength: 5,
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
            required: true
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
            required: "Campo Obrigatorio",
            minlength: "login deve conter no minimo {0} caracteres",
            maxlength: "login deve conter no maximo {0} caracteres"
        },
        senha: {
            required: "Campo Obrigatorio",
            minlength: "senha deve conter no minimo {0} caracteres",
            maxlength: "senha deve conter no maximo {0} caracteres"
        },
        nome: {
            required: "Campo Obrigatorio",
            minlength: "Nome deve conter no minimo {0} caracteres",
            maxlength: "Nome deve conter no maximo {0} caracteres"
        },
        cpf: {
            required: "Campo Obrigatorio"
        },
        email: {
            required: "Campo Obrigatorio"
        },
        telefone: {
            required: "Campo Obrigatorio"
        },
        funcao: {
            required: "Campo Obrigatorio"
        },
        cep: {
            required: "Campo Obrigatorio"
        },
        estado: {
            required: "Campo Obrigatorio"
        },
        rua: {
            required: "Campo Obrigatorio"
        },
        bairro: {
            required: "Campo Obrigatorio"
        },
        cidade: {
            required: "Campo Obrigatorio"
        },
        numero: {
            required: "Campo Obrigatorio",
            minlength: "Numero deve conter no minimo {0} caracteres",
            maxlength: "Numero deve conter no maximo {0} caracteres"
        }

    }
});

/*$("#validacao-form-func").on('submit', function (e) {
    if ($("#validacao-form-func").valid() == false) {
        e.preventDefault();
    } else {
        alert('Xama q e nois');
    }
});
*/

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