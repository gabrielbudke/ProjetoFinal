$(function(){
   $("#produtos-index").DataTable({
       "columns": [
           {"data":"categoria"},
           {"data":nome},
           {"data":"preco"},
           {
               "data":null,
               "render": function (data){
                   return //caminho do icone para editar na coluna funcionario
               }
            }
       ]
   });
   
});
