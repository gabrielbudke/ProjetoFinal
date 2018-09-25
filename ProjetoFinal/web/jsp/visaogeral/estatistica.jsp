<%-- 
    Document   : estatistica
    Created on : 18/09/2018, 08:10:40
    Author     : Patrick
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="/jsp/master/master.jsp" %>
<!DOCTYPE html>
<html>
 
    <head>
        <meta charset="UTF-8">
        <title>E-Stock</title>
        
     
    <script src="/js/jquery.min.js"></script>
     <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>
     

    </head>
 
    <body>

        
       <div class="col-md-6 col-sm-6 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                      <h2>Produtos<small>mais vendidos</small></h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                      <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                        <ul class="dropdown-menu" role="menu">
                          <li><a href="#">Settings 1</a>
                          </li>
                          <li><a href="#">Settings 2</a>
                          </li>
                        </ul>
                      </li>
                      <li><a class="close-link"><i class="fa fa-close"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                      <canvas class="myChart"><div class="myChart" style="width:100%; height:280px;"></div></canvas>
                  </div>
                </div>
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
                                        label: "Mais Vendidos",
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

<%@include file="/jsp/master/rodape.jsp" %>

