$("#validacao-registrar-venda-form-func").validate({
    errorClass: "text-danger border-danger",
    errorElementClass: "text-danger border-danger",
    validClass: "text-success border-success",
    validElementClass: "text-success border-success",
    rules: {
        produto: {
            required: true
        },
        quantidade: {
            required: true,
            number: true
        }
    },
    messages: {
        produto: {
            required: "Selecione um item da lista."
        },
        quantidade: {
            required: "Insira uma quantidade.",
            number: "Quantidade deve conter somente números."
        }
    }
});