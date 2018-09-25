$("#validacao-fornecedor-form-func").validate({

    errorClass: "text-danger border-danger",
    errorElementClass: "text-danger border-danger",
    validClass: "text-success border-success",
    validElementClass: "text-success border-success",
    rules: {
        nome: {
            required: true,
            minlength: 3,
            maxlength: 20
        },
        cnpj: {
            required: true,
            minlength: 17
        },
        telefone: {
            required: true,
            minlength: 13
        },
        email: {
            required: true,
            email: true
        }
    },
    messages: {
        nome: {
            required: "Campo Obrigatorio.",
            minlength: "Nome deve conter no minimo {0} caracteres.",
            maxlength: "Nome deve conter no maximo {0} caracteres."
        },
        cnpj: {
            required: "Campo Obrigatorio.",
            minlength: "CNPJ deve conter todos os caracteres."
        },
        telefone: {
            required: "Campo Obrigatorio.",
            minlength: "Telefone deve conter todos os caracteres."
        },
        email: {
            required: "Campo Obrigatorio.",
            email: "Insira um Email valido."
        }
    }
});
$(function () {

    $("#campo-telefone").mask("(99)9999-9999");

    $("#campo-cnpj").mask("99.999.999/9999-99");
});