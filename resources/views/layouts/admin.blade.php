<!DOCTYPE html>
    <html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>MMM - @yield('title')</title>
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <meta name="robots" content="noindex, nofollow">


        <link rel="stylesheet" href="{{ asset('css/apps.css') }}">
        <link rel="stylesheet" href="{{ asset('css/system.css') }}">
        <link rel="stylesheet" href="{{ asset('iconfont/material-icons.css') }}">
        <link rel="icon" href="{{ asset('images/logo/fondo-logo.png') }}">
         @stack('styles')
    </head>
    <body class="hold-transition sidebar-mini layout-fixed layout-navbar-fixed layout-footer-fixed">
        <div class="wrapper" id="body">


        <nav class="main-header navbar navbar-expand navbar-white navbar-light blue-gradient-dark">
        <!-- Left navbar links -->
        <ul class="navbar-nav">
        <li class="nav-item">
            <a class="nav-link" data-widget="pushmenu" href="#"><i class="fas fa-bars"></i></a>
        </li>
        <li class="nav-item d-none d-sm-inline-block">
             @can('VerNotificaciones')

        <a href="#" class="btn" data-toggle="modal" data-target="#NotificacionesStock">
               
             
                <label id="total_notificaciones  white-text">
                    <p class="white-text">{{$notificaciones}}
                 
                        <i class="fa fa-envelope white-text" aria-hidden="true"></i>
            i
                       Notificaciones pendientes
                  </p>
                </label>
          
        </a>
                            

        </li>
        @endcan

        </li>
        <li class="nav-item d-none d-sm-inline-block">

        </li>
        </ul>

        <!-- SEARCH FORM -->
        <form class="form-inline ml-3">
        <div class="input-group input-group-sm">
            <div class="input-group-append">
            </div>
        </div>
        </form>

        <!-- Right navbar links -->
        <ul class="navbar-nav ml-auto">
        <!-- Notifications Dropdown Menu -->
        <!-- Navbar Right Menu -->
            <div class="navbar-custom-menu">
                <ul class="nav navbar-nav">
                <li class="dropdown user user-menu" >
                    <a href="#" class="dropdown-toggle text-white" data-toggle="dropdown">
                    <!--<img src="dist/img/user2-160x160.jpg" class="user-image" alt="User Image">-->
                    <span class="fa fa fa-user"></span>
                    <span class="hidden-xs">{{ Auth::user()->full_name}} </span>
                    </a>
                    <ul class="dropdown-menu text-white">
                    <li class="user-header blue darken-4">
                       <!-- <img src="{{ asset('images/user/user1-128x128.jpg') }}" class="img-circle" alt="User Image">-->
                        <i class="fa fa-user fa-5x" style="color:#fff;"></i>
                        <p>
                        {{ Auth::user()->full_name }}
                        <br>
                        {{ Auth::user()->hasrole('Administrador') ? 'Supervisor Nacional' : 'Presbítero' }}



                        </p>
                    </li>
                    <li class="user-footer">
                      <div class="float-left">
                        <a href="{{ url('user', [Auth::user()->encode_id]) }}" class="btn btn-default btn-flat">
                            <i class="fa fa-eye"></i> Datos
                        </a>
                        </div>
                          <div class="float-right">
                        <a href="logout" onclick="event.preventDefault();document.getElementById('logout-form').submit();" class="btn btn-default btn-flat">
                            <i class="fas fa-sign-out-alt"></i> Salir
                        </a>
                        <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                            {{ csrf_field() }}
                        </form>
                        </div>
                    </li>
                    </ul>
                </li>
                <!-- Control Sidebar Toggle Button -->
                <!-- Uncomment this line to activate the control right sidebar button
                <li>
                    <a href="#" data-toggle="control-sidebar"><i class="fa fa-gears"></i></a>
                </li>
                -->
                </ul>
            </div>
        </ul>
    </nav>
    <!-- /.navbar -->


        <!-- Left side column. contains the logo and sidebar -->
        <aside class="main-sidebar sidebar-dark-primary elevation-4" id="leftmenu">
            @include('layouts.partials.leftmenu')
        </aside>

        <!-- Content Wrapper. Contains page content -->
        <div class="content-wrapper"><br>
            <section class="content-header">
            <h1 class="ml-3">
                @yield('page_title')
                <small>@yield('page_subtitle')</small>
            </h1>
            <ol class="breadcrumb float-sm-right">

                @show
            </ol>
            </section>



            <!-- Main content -->
            <section class="content container-fluid">
            <!--Page Content Here -->
            @yield('content')
            </section>
        </div>



        <!-- Main Footer -->
        <footer class="main-footer">
            <div class="float-right hidden-xs">
            {{ env('APP_NAME') }}
            </div>
            <strong>Copyright &copy; 2020 <a href="#">{{ env('APP_NAME') }}</a>.</strong> All rights reserved.
        </footer>

        <!-- Control Sidebar -->
        <!-- Uncomment this line to activate the control right sidebar menu
        @@include('layouts.partials.sidebar')
        -->
        </div>

        <!-- REQUIRED JS SCRIPTS -->
        <!-- jQuery -->
        <script src="{{asset('js/apps.js')}}"></script>
        <script src="{{ asset('js/system.js') }}"></script>
        <script>

         @if(Session::has('message'))
         var type = "{{ Session::get('alert-type', 'info') }}";
         switch(type){
             case 'info':
                 toastr.info("{{ Session::get('message') }}");
                 break;

             case 'warning':
                 toastr.warning("{{ Session::get('message') }}");
                 break;

             case 'success':
                 toastr.success("{{ Session::get('message') }}");
                 break;

             case 'error':
                 toastr.error("{{ Session::get('message') }}");
                 break;
         }
     @endif
     </script>
        @stack('scripts')

        <style>

        #sidebar{


                
                }


        #opciones{

                    background: #b71c1c;


                }


        </style>

        @can('VerNotificaciones')
        <!-- Modal alerts -->
<div class="modal fade" id="NotificacionesStock" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
              
                <h4 class="modal-title">Notificaciones</h4>
            </div>

            <div class="list-group">
               
                    <div class="list-group">
                    @foreach($descripNot     as $notificacion)
                        <div class="list-group-item list-group-item-action">
                            <div class="row">                               
                                <div class="col-md-8 col-md-offset-1">
                                    <h5>{{$notificacion->fecha}}</h5>
                                    <h4>
                                        <i class="fas fa-envelope-open" aria-hidden="true"></i>
                                        <a class="btn-link" target="_blank" href="{{$notificacion->link}}">
                                            <small>{{$notificacion->titulo}}</small>

                                        </a>
                                    </h4>
                                    <p class="mb-1">{{$notificacion->texto}}</p>
                                </div>
                                <div class="col-md-1 col-md-offset-1">
                                    <h4 align="">
                                        {!! Form::open(['route' => ['borrarNotificacion', $notificacion->id], 'method' => 'DELETE', 'class' => 'form-borrar' ]) !!}
                                            <a class="btn btn-link btn-borrar-mensaje" type="submit" value=""><i class="fa fa-trash" aria-hidden="true"></i></a>
                                        {!! Form::close() !!}
                                    </h4>
                                </div>
                                <div class="col-sm-12">
                                    <h4>
                                        <i class="fas fa-edit" aria-hidden="true"></i>
                                        <a class="btn-link" target="_blank" href="{{$notificacion->link_2}}">
                                            <small>Editar Actividad</small>

                                        </a>
                                    </h4>
                                </div>
                            </div>
                        </div>
                    @endforeach
                        <div id="sin-mensajes" class="list-group-item list-group-item-action">
                            <div class="row">
                                <div class="col-md-10 col-md-offset-1 nuevas text-center">
                                    <h4>No hay notificaciones que mostrar</h4>
                                </div>
                            </div>
                        </div>
                    </div>
             
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
            </div>
        </div>
    </div>
</div>

@endcan

<script type="text/javascript">
    $(document).ready(function(){
        if($(".form-borrar").length > 0){
            $("#sin-mensajes").hide();
        }
        $('.form-borrar').on('click', function(e) {
            e.preventDefault();
            var form = this;
            var data = $(this).serialize();
            var url = $(this).attr('action');
            $.ajax({
                url: url,
                data: data,
                type: 'DELETE',
                success: function(result) {
                    var row = $(form).parents('.list-group-item');
                    //row.fadeOut().remove();
                    row.fadeOut().remove();
                    $("#total_notificaciones").html(result.total);
                    if(result.total == 0){
                        $("#sin-mensajes").fadeIn();
                    }
                },
                error: function(result) {
                }
            });
        });
    });
</script>
    </body>
</html>
