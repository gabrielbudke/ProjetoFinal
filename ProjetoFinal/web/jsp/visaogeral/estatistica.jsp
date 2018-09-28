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

        <div class="col-md-6 col-lg-12 col-xs-12">
            <div class="x_panel">
                <div class="x_title">
                    <h2>Produtos<small>mais vendidos por categoria</small></h2>

                    <div class="clearfix"></div>
                </div>

                <canvas class="myChart"><div class="myChart" style="width:100%; height:500px;"></div></canvas>
            </div>

        </div>
        <div>
            <canvas class="meuGrafico"><div class="meuGrafico" style="width:100%; height:500px;"></div></canvas>
        </div>   




        <script src='/js/grafico-produtos.js'></script>
        <script src='/js/grafico-categoria.js'></script>


    </body>
</html>

<%@include file="/jsp/master/rodape.jsp" %>

