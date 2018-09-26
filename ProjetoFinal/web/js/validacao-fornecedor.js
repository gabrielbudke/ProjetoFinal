$("#validacao-fornecedor-form-func").validate({

    errorClass: "text-danger border-danger",
    errorElementClass: "text-danger border-danger",
    validClass: "text-success border-success",
    validElementClass: "text-success border-success",
    rules: {
        nome: {
            required: true,
            minlength: 5,
            maxlength: 20
        },
        cnpj: {
            required: true
        },
        telefone: {
            required: true
        },
        email: {
            required: true,
            email: true
        }
    },
    messages: {
        nome: {
            required: "Campo Obrigatório.",
            minlength: "Nome deve conter no minimo {0} caracteres.",
            maxlength: "Nome deve conter no maximo {0} caracteres."
        },
        cnpj: {
            required: "Campo Obrigatório."
        },
        telefone: {
            required: "Campo Obrigatório."
        },
        email: {
            required: "Campo Obrigatório.",
            email: "Insira um Email válido."
        }
    }
});
$(function () {

    $("#campo-telefone").mask("(99)9999-9999");

    $("#campo-cnpj").mask("99.999.999/9999-99");
});