 @extends('layouts.admin')

@section('title', 'Actividades')
@section('page_title', 'Actividades')
@section('page_subtitle', 'Listado')

@section('breadcrumb')
    @parent
    <li><a href="{{ url('/') }}"><i class="fa fa-dashboard"></i> Inicio</a></li>
    <li><a href="{{ url('actividades') }}">iglesiases</a></li>
    <li class="active">Listado</li>
@endsection

@section('content')
 <div class="container">
<br>
   <div class="row">
        <div class="col-md-12">
          <div class="card">
          	{!! Form::open(['route' => ['actividades.store'],'method' => 'POST','autocomplete'=>'off','enctype' => 'multipart/form-data']) !!}
            <div class="card-header blue-gradient-dark text-white">
              <h3 class="card-title">Registro de activades</h3>
            </div>
            <div class="card-body table-responsive table-striped">
              <ul class="list-inline">
                   <li class="list-inline-item">
                      <a href="/" class="link_ruta">
                        Inicio &nbsp; &nbsp;<i class="fa fa-chevron-right" aria-hidden="true"></i>
                      </a>
                    </li>
                   <li class="list-inline-item">
                      <a href="/actividades" class="link_ruta">
                        Listado &nbsp; &nbsp;<i class="fa fa-chevron-right" aria-hidden="true"></i>
                      </a>
                    </li>
                  </ul><br>
                  @include('admin.actividades.partials.form')
	            {!! Form::close()!!}
	          </div>
	        </div>
	      </div>
	    </div>
    @endsection

   @push('scripts')
    <script>
      $(function () {
        $('input').iCheck({
          checkboxClass: 'icheckbox_square-blue',
          radioClass: 'iradio_square-blue',
          increaseArea: '20%' // optional
        });
      });
    </script>
    @endpush
