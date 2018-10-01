/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$(function () {
    var ctx = document.getElementsByClassName("meuGrafico");
    $.ajax({
        url: "/visao/produtos",
        success: function (data, textStatus, jqXHR) {
            //type, Data e options
            var chartgraph = new Chart(ctx, {
                type: 'pie',
                data: {
                    labels: data.produtos,
                    datasets: [{
                            label: "Vendidos",
                            data: data.quantidades,
                            borderWidth: 2,
                            borderColor: 'white',
                            backgroundColor: '#26B99A'
                        }]
                },
                option: {
                    //responsive: true,
                    scales: {
                        yAxes: [{
                                ticks: {
                                    beginAtZero: true
                                }
                            }]
                    }
                }

            });
        }
    });
});
