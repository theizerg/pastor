@extends('layouts.admin')

@section('title', 'Actividades')
@section('page_title', 'Actividades')
@section('page_subtitle', 'Editar datos')

@section('breadcrumb')
    @parent
    <li><a href="{{ url('/') }}"><i class="fa fa-dashboard"></i> Inicio</a></li>
    <li><a href="{{ url('pastor') }}">Pastor</a></li>
    <li class="active">Ingresar</li>
@endsection

@section('content')

  <section class="container">
    <div class="row">
      <div class="col-md-6">
        <div class="btn-group">
          
          <a href="{{ url('actividades') }}" class="btn blue darken-4 text-white"><i class="fas fa-sort-alpha-down-alt"></i> Listado</a>  
        
        </div>
      </div>
    </div>
    <br>

  <div class="row">
      <div class="col-md-12">
        <div class="card ">

        <div class="card-body">
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
          
                  {!!Form::model($actividad,['method'=>'PUT','route'=>['actividades.update',$actividad->encode_id],'id'=>'pastor_form'])!!} 
                        
                
                @include('admin.actividades.partials.form')
                

          {!! Form::close()!!}
         
        </div>
      </div>
    </div>
  </div>
</section>
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