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
            required: true
        },
        preco: {
            required: true
        }
    },
    messages: {
        categoria: {
            required: "Selecione uma Categoria"
        },
        nome: {
            required: "Campo Obrigatorio",
            minlength: "Nome do produto deve ser maior que {0}",
            maxlength: "Nome do produto deve ser menor que {0}"
        },
        quantidade: {
            required: "Adicione a quantidade de produto"
        },
        preco: {
            required: "Adicione o preço do produto"
        }
    }
}); 