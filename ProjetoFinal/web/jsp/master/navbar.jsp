<%@page import="br.com.projeto.bean.FuncionarioBean"%>
<div class="col-md-3 left_col">
    <div class="left_col scroll-view">
        <div class="navbar nav_title" style="border: 0;">
            <a href="/home" class="site_title"><i class="fa fa-paw"></i> <span>&nbsp;&nbsp;E-Stock</span></a>
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
                <h3>General</h3>
                <ul class="nav side-menu">
                    <li><a href = "#batata"><i class="fa fa-home"></i> Home <span class="fa fa-chevron-down"></span></a>
                        <ul class="nav child_menu">
                            <li ><a href="/visaogeral">Vis�o Geral</a>
                            <li ><a href="/estoque">Estoque</a></li>
                            <li ><a href="/fornecedor">Fornecedores</a></li>
                            <li ><a href="/funcionarios">Funcionarios</a></li>
                            <li ><a href="/produtos">Produtos</a></li>
                            <li ><a href="/vendas">Vendas</a></li>
                        </ul>
                    </li>                  
                </ul>
            </div>
        </div>
        <!-- /sidebar menu -->

        <!-- /menu footer buttons -->
        <div class="sidebar-footer hidden-small">
            <a data-toggle="tooltip" data-placement="top" title="FullScreen">
                <span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
            </a>
            <a data-toggle="tooltip" data-placement="top" title="Lock">
                <span class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
            </a>
            <a data-toggle="tooltip" data-placement="top" title="Logout" href="login.html">
                <span class="glyphicon glyphicon-off" aria-hidden="true"></span>
            </a>
        </div>
        <!-- /menu footer buttons -->
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
                        <li><a href="javascript:;"> Profile</a></li>
                        <li>
                            <a href="javascript:;">
                                <span class="badge bg-red pull-right">50%</span>
                                <span>Settings</span>
                            </a>
                        </li>
                        <li><a href="javascript:;">Help</a></li>
                        <li><a href="/usuario/logout"><i class="fa fa-sign-out pull-right"></i> Log Out</a></li>
                    </ul>
                </li>

                
            </ul>
        </nav>
    </div>
</div>
<!-- /top navigation -->