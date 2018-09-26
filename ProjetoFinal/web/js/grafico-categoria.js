/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$(function () {
    var ctx = document.getElementsByClassName("myChart");
    $.ajax({
        url: "/visao/categorias",
        success: function (data, textStatus, jqXHR) {
            //type, Data e options
            var chartgraph = new Chart(ctx, {
                type: 'bar',
                data: {
                    labels: data.categorias,
                    datasets: [{
                            label: "Vendidos",
                            data: data.quantidades,
                            borderWidth: 3,
                            borderColor: 'black',
                            backgroundColor: '#26B99A'
                        }]
                },
                option: {
                    responsive: true,
                    layout: {
                        padding: {
                            left: 50,
                            righ: 0,
                            top: 0,
                            bottom: 0
                        }
                    }
                }

            });
        }
    });
});




