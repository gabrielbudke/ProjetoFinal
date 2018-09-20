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
            required: true,
            minlength: 11,
            maxlength: 11
        },
        email: {
            required: true
        },
        telefone: {
            required: true,
            minlength: 11,
            maxlength: 11
        },
        funcao: {
            required: true
        },
        cep: {
            required: true,
            minlength: 8,
            maxlength: 8
        },
        estado: {
            required: true,
            minlength: 2,
            maxlength: 2
        },
        rua: {
            required: true,
            minlength: 1,
            maxlength: 30
        },
        bairro: {
            required: true,
            minlength: 3,
            maxlength: 50
        },
        cidade: {
            required: true,
            minlength: 5,
            maxlength: 30
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
            required: "Campo Obrigatorio",
            minlength: "CPF deve conter no minimo {0} caracteres",
            maxlength: "CPF deve conter no maximo {0} caracteres"
        },
        email: {
            required: "Campo Obrigatorio"
        },
        telefone: {
            required: "Campo Obrigatorio",
            minlength: "Telefone deve conter no minimo {0} caracteres",
            maxlength: "Telefone deve conter no maximo {0} caracteres"
        },
        funcao: {
            required: "Campo Obrigatorio"
        },
        cep: {
            required: "Campo Obrigatorio",
            minlength: "CEP deve conter no minimo {0} caracteres",
            maxlength: "CEP deve conter no maximo {0} caracteres"
        },
        estado: {
            required: "Campo Obrigatorio",
            minlength: "Estado deve conter no minimo {0} caracteres",
            maxlength: "Estado deve conter no maximo {0} caracteres"
        },
        rua: {
            required: "Campo Obrigatorio",
            minlength: "Rua deve conter no minimo {0} caracteres",
            maxlength: "Rua deve conter no maximo {0} caracteres"
        },
        bairro: {
            required: "Campo Obrigatorio",
            minlength: "Bairro deve conter no minimo {0} caracteres",
            maxlength: "Bairro deve conter no maximo {0} caracteres"
        },
        cidade: {
            required: "Campo Obrigatorio",
            minlength: "Cidade deve conter no minimo {0} caracteres",
            maxlength: "Cidade deve conter no maximo {0} caracteres"
        },
        numero: {
            required: "Campo Obrigatorio",
            minlength: "Numero deve conter no minimo {0} caracteres",
            maxlength: "Numero deve conter no maximo {0} caracteres"
        }

    }
});

$("#validacao-form-func").on('submit', function (e) {
    if ($("#validacao-form-func").valid() == false) {
        e.preventDefault();
    } else {
        alert('Xama q e nois');
    }
});

$("#validacao-form-func").validate({
    rules: {
        field: {
            required: true,
            number: true
        }
    }

});