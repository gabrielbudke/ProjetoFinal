/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$(function () {
    $("#fornecedor-index").DataTable({
        "ajax": "/fornecedor/obtertodos",
        "language": {
            "sEmptyTable": "Nenhum registro encontrado",
            "sInfo": "Mostrando de _START_ até _END_ de _TOTAL_ registros",
            "sInfoEmpty": "Mostrando 0 até 0 de 0 registros",
            "sInfoFiltered": "(Filtrados de _MAX_ registros)",
            "sInfoPostFix": "",
            "sInfoThousands": ".",
            "sLengthMenu": "_MENU_ resultados por página",
            "sLoadingRecords": "Carregando...",
            "sProcessing": "Processando...",
            "sZeroRecords": "Nenhum registro encontrado",
            "sSearch": "Pesquisar",
            "oPaginate": {
                "sNext": "Próximo",
                "sPrevious": "Anterior",
                "sFirst": "Primeiro",
                "sLast": "Último"
            },
            "oAria": {
                "sSortAscending": ": Ordenar colunas de forma ascendente",
                "sSortDescending": ": Ordenar colunas de forma descendente"
            },
            "select": {
                "rows": {
                    "_": "Selecionado %d linhas",
                    "0": "Nenhuma linha selecionada",
                    "1": "Selecionado 1 linha"
                }
            }
        },

        "columns": [
            {"data": "id"},
            {"data": "nome"},
            {"data": "cnpj"},
            {"data": "telefone"},
            {"data": "email"},
            {
                "data": null,
                "render": function (data) {
                    return "<a class='btn btn-info'  href='/fornecedor/editar?id=" + data.id + "'><i class='fa fa-edit'></i> Editar</a>\
                    <a class='btn btn-danger' href='/fornecedor/excluir?id=" + data.id + "'><i class='fas fa-trash-alt'></i> Excluir</a>";
                }
            }


        ]
    });

});

