$(function () {
    $("#produtos-index").DataTable({
        "ajax": "/produtos/obterparadatatable",
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
            {"data": "id_categoria"},
            {"data": "nome"},
            {"data": "preco"},
            {
                "data": null,
                "render": function (data) {
                    return  "<a class='btn btn-info'  href='/produtos/editar?id=" + data.id + "'><i class='fa fa-edit'></i> Editar</a>\
                    <a class='btn btn-danger' href='/produtos/excluir?id=" + data.id + "'><i class='fas fa-trash-alt'></i> Excluir</a>";
                    //caminho do icone para editar na coluna funcionario
                }
            }
        ]
    });

});


/*function confirmacao("excluir?id"){
    var resposta = confirm("Deseja excluir esse registro?");
        href="/produtos/excluir?id=" + data.id
    if(resposta == true){

    }
}

para confirmar exclusao
http://rafaelcouto.com.br/confirmacao-antes-de-deletar-registro-com-javascript/ 
*/

