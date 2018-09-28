$("#validacao-novo-produto-form-func").validate({

    errorClass: "text-danger border-danger",
    errorElementClass: "text-danger border-danger",
    validClass: "text-success border-success",
    validElementClass: "text-success border-success",
    rules: {
        categoria: {
            required: true
        },
        nome: {
            required: true,
            minlength: 3,
            maxlength: 30
        },
        quantidade: {
            required: true,
            number: true
        },
        preco: {
            required: true,
            number: true
        }
    },
    messages: {
        categoria: {
            required: "Selecione uma categoria*"
        },
        nome: {
            required: "Campo obrigatório.",
            minlength: "Nome do produto deve ser maior que {0}.",
            maxlength: "Nome do produto deve ser menor que {0}."
        },
        quantidade: {
            required: "Adicione a quantidade de produto.",
            number: "Quantidade deve conter somente números."
        },
        preco: {
            required: "Adicione o preço do produto.",
            number: "Preço deve conter um número válido."
        }
    }
}); 