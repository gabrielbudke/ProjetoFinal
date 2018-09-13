$(function(){
   $("#funcionario-index").DataTable({
       "ajax": "/funcionarios/obtertodosparadatatable",
       "columns": [
           {"data": "id"},
           {"data": "nome"},
           {"data": "funcao"},
           {"data": "telefone"},
           {"data": "telefone"}
       ]
   }); 
});