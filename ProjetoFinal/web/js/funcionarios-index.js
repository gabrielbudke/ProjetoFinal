$(function () {
    $("#funcionario-index").DataTable({
        "ajax": "/funcionarios/obtertodosparadatatable",
        "columns": [
            {"data": "id"},
            {"data": "nome"},
            {"data": "funcao"},
            {"data": "telefone"},
            {
                "data": null,
                "render": function (data) {
                    return "<a class='btn btn-info'  href='/produtos/editar?id=" + data.id + "'><i class='fas fa-edit'></i> Editar</a>\
                    <a class='btn btn-danger' href='/produtos/excluir?id=" + data.id + "'><i class='fas fa-trash-alt'></i> Excluir</a>";
                }
            }
        ]
    });
});