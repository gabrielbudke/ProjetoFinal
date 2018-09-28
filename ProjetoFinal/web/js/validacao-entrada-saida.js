$("#validacao-entrada-form-func").validate({

    errorClass: "text-danger border-danger",
    errorElementClass: "text-danger border-danger",
    validClass: "text-success border-success",
    validElementClass: "text-success border-success",
    rules: {
        produtoEntrada: {
            required: true
        },
        quantidade: {
            required: true,
            number: true
        }
    },
    messages: {
        produtoEntrada: {
            required: "Selecione um item."
        },
        quantidade: {
            required: "Selecione a Quantidade.",
            number: "Quantidade deve conter somente números."
        }
    }
});

$("#validacao-saida-form-func").validate({

    errorClass: "text-danger border-danger",
    errorElementClass: "text-danger border-danger",
    validClass: "text-success border-success",
    validElementClass: "text-success border-success",
    rules: {
        produtoSaida: {
            required: true
        },
        quantidade: {
            required: true,
            number: true
        }
    },
    messages: {
        produtoSaida: {
            required: "Selecione um item."
        },
        quantidade: {
            required: "Selecione a Quantidade.",
            number: "Quantidade deve conter somente números."
        }
    }
});