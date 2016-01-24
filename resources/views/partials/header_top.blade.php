<!-- header section start-->
<div class="header-section">
    <div class="logo1">
        <a><img src="{{ asset('images/logo.jpg')  }}" alt=""></a>
    </div>
    <div class="logo2">
        <a><img src="{{ asset('images/umss1.jpg')  }}" alt=""></a>
    </div>
    <div class="logo3">
        <a><img src="{{ asset('images/fcyt1.jpg')  }}" alt=""></a>
    </div>
     <div class="logo4">
        <a><img src="{{ asset('images/logo3.png')  }}" alt=""></a>
    </div>
    
        <h1 class="tituloSistema1"> Sistema de Planes 
            Globales </h1>
    
    <!--toggle button start-->
   <a class="toggle-btn"><i class="fa fa-bars"></i></a>

    <!--toggle button end-->


    <!--notification menu start -->
    <div class="menu-left">
        <ul class="notification-menu">
            <li>
                <a href="{{ url('/dashboard') }}" class="btn btn-default dropdown-toggle" >
                    INICIO
                    
                </a>

            </li>
            <li>
                <a href="#" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                    FCyT
                    <span class="caret"></span>
                </a>
                <ul class="dropdown-menu dropdown-menu-usermenu pull-right">
                    <li><a href="#"><i class="fa fa-info-circle"></i> <span>{{ trans('ui.header_top.inf') }}</span></a></li>
                    <li><a href="#"><i class="fa fa-map-o"></i> {{ trans('ui.header_top.ubicacion') }}</a></li>
                </ul>
            </li>
             <li>
                <a href="#" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                    CARRERAS
                    <span class="caret"></span>
                </a>
                <ul class="dropdown-menu dropdown-menu-usermenu pull-right">
                    <li><a href="{{ url('auth/user/change-password') }}"><i class="fa fa-key"></i> <span>{{ trans('ui.header_top.change_password') }}</span></a></li>
                    <li><a href="{{ url('auth/logout') }}"><i class="fa fa-sign-out"></i> {{ trans('ui.header_top.logout') }}</a></li>
                </ul>
            </li>
             <li>
                <a href="#" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                    NOTICIAS
                    <span class="caret"></span>
                </a>
                <ul class="dropdown-menu dropdown-menu-usermenu pull-right">
                    <li><a href="{{ url('auth/user/change-password') }}"><i class="fa fa-key"></i> <span>{{ trans('ui.header_top.change_password') }}</span></a></li>
                    <li><a href="{{ url('auth/logout') }}"><i class="fa fa-sign-out"></i> {{ trans('ui.header_top.logout') }}</a></li>
                </ul>
            </li>

        </ul>
    </div>
    <div class="menu-right">
        <ul class="notification-menu">
            <li>
                <a href="#" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                    {{ Auth::user()->firstname.' ' .Auth::user()->lastname }}
                    <span class="caret"></span>
                </a>
                <ul class="dropdown-menu dropdown-menu-usermenu pull-right">
                    <li><a href="{{ url('auth/user/change-password') }}"><i class="fa fa-key"></i> <span>{{ trans('ui.header_top.change_password') }}</span></a></li>
                    <li><a href="{{ url('auth/logout') }}"><i class="fa fa-sign-out"></i> {{ trans('ui.header_top.logout') }}</a></li>
                </ul>
            </li>

        </ul>
    </div>
    <!--notification menu end -->

</div>

<!-- header section end-->