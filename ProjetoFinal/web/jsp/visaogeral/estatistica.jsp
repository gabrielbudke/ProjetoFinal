<%-- 
    Document   : estatistica
    Created on : 18/09/2018, 08:10:40
    Author     : Patrick
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Chart Js - Graphics</title>
        <script src="/js/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>
    </head>
    <body>
        <div style="float: left;">
            <!-- Start Canvas -> Desenhar elementos gráficos -->
            <canvas class="myChart" style="width: 200; height: 400px;"> </canvas>

        </div>

        <script>
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
                                        borderWidth: 6,
                                        borderColor: 'black',
                                        backgroundColor: '#edf900'
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



        </script>


    </body>
</html>



