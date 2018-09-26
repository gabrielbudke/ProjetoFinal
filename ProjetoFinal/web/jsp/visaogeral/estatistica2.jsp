<%-- 
    Document   : estatistica 2
    Created on : 26/09/2018, 10:34:33
    Author     : Alunos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="/js/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>
    </head>
    <body>
        <canvas class="graficoProduto" width="400" height="400"></canvas>
    </body>
    <script>
        $(function () {
    var ctx = document.getElementByClassName("#graficoProduto");
     $.ajax({
                    url: "/visao/produtos",
                    success: function (data, textStatus, jqXHR) {
                        //type, Data e options
                        var chartgraph = new Chart(ctx, {
                            type: 'bar',
                            data: {
                                labels: data.produtos,
                                datasets: [{
                                        label: "Produtos",
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

        
        
        
    </script>
</html>

        