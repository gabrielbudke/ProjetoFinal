<%@page import="br.com.projeto.bean.FuncionarioBean"%>
<div class="col-md-3 left_col">
    <div class="left_col scroll-view">
        <div class="navbar nav_title" style="border: 0;">
            <a href="/home" class="site_title"><i class="fas fa-box-open"></i> <span>&nbsp;&nbsp;E-Stock</span></a>
        </div>

        <div class="clearfix"></div>

        <!-- menu profile quick info -->
        <div class="profile clearfix">
            <div class="profile_pic">
               <img src="componentes/perfilUsuario/person-flat.png" alt="..." class="img-circle profile_img">
            </div>
            <div class="profile_info">
                <span>Bem-vindo(a),</span>
                <h2><%= ((FuncionarioBean) request.getSession().getAttribute("funcionario")).getNome()%></h2>
            </div>
        </div>
        <!-- /menu profile quick info -->

        <br />

        <!-- sidebar menu -->
        <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
            <div class="menu_section">
                <h3>Menu</h3>
                <ul class="nav side-menu">
                    <li><a href = "/home"><i class="fa fa-home"></i> Home</a>
                        
                        
                    </li>
                    <li><a><i class="fas fa-boxes"></i> &nbsp Estoque <span class="fa fa-chevron-down"></span></a>
                        <ul class="nav child_menu">
                            
                            <li ><a href="/produtos">Produtos</a></li>
                            <li ><a href="/vendas">Vendas</a></li>
                        </ul>                      
                        
                    </li>

                    <li><a href = "/funcionarios"><i class="fas fa-users"></i> &nbsp Funcionários</a>
                        
                    </li>
                    
                    
                    <li><a href = "/fornecedor"><i class="fas fa-truck-loading"></i> &nbsp Fornecedores </a> </li>
                    
                    <li><a href="/visaogeral"><i class="far fa-chart-bar"></i> &nbsp Estatística</a>
                        

                    
                        
                        

                    
                </ul>
            </div>
        </div>
        <!-- /sidebar menu -->

   
   
    </div>
</div>

<!-- top navigation -->
<div class="top_nav">
    <div class="nav_menu">
        <nav>
            <div class="nav toggle">
                <a id="menu_toggle"><i class="fa fa-bars"></i></a>
            </div>

            <ul class="nav navbar-nav navbar-right">
                <li class="">
                    <a href="javascript:;" class="user-profile dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                        <img src="componentes/perfilUsuario/person-flat.png" alt=""><%= ((FuncionarioBean) request.getSession().getAttribute("funcionario")).getNome()%>
                        <span class=" fa fa-angle-down"></span>
                    </a>
                    <ul class="dropdown-menu dropdown-usermenu pull-right">
                        
                        <li>
                        <a href="/comercianteConta"><i class=""></i> Conta</a></li>
                        <li>
                            <a href="javascript:;">
                           
                                <span>Configurações</span>
                            </a>
                        </li>
                        <li><a href="javascript:;">Suporte</a></li>

                        <li><a href="/usuario/logout"><i class="fa fa-sign-out pull-right"></i> Sair</a></li>
                    </ul>
                </li>

                

            </ul>
        </nav>

    </div>
</div>
<!-- /top navigation -->