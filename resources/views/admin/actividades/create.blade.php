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
                  <div class="row">
				      <div class="col-sm-6">
				         <div class="form-group">
				          <label>Fecha de inicio</label>
				            {{ Form:: date('fecha_inicio',null,['class'=>'form-control','placeholder' => 'Nombres','id'=>'fecha']) }}
				             <input name="user_id" type="hidden" value=" {{ auth()->user()->id}}" id="users_id">
				          </div>
				      </div>    
				      <div class="col-sm-6">
				         <div class="form-group">
				          <label>Fecha de fin</label>
				            {{ Form:: date('fecha_fin',null,['class'=>'form-control','placeholder' => 'Nombres','id'=>'fecha']) }}
				             <input name="user_id" type="hidden" value=" {{ auth()->user()->id}}" id="users_id">
				          </div>
				      </div>  
				       <div class="col-sm-6">
					      <label>Hora de comienzo</label>
					        <div class="form-group">
					         {{ Form:: text('hora_comienzo',null,['class'=>'form-control','placeholder' => 'Hora de inicio','id'=>'hora_comienzo']) }}
					      </div> 
					   </div> 
					    <div class="col-sm-6">
					      <label>Hora de fin</label>
					        <div class="form-group">
					         {{ Form:: text('hora_fin',null,['class'=>'form-control','placeholder' => 'Hora de inicio','id'=>'hora_fin']) }}
					      </div> 
					   </div> 
					   <div class="col-sm-12">
					   	<label>Comentario sobre la actividad</label>
					   	 {!! Form::textarea('comentario', old('comentario'), ['class' => 'form-control ', 'placeholder' => 'Ingrese la descripción de la actividad']) !!}
					   </div>  
					   <div class="col-sm-12">
					   	 <div class="form-group text-center">
						    <label for="status_id">Estado de la actividad</label>
						    <div class="checkbox icheck">
						      <label>
						        <input type="radio" name="status_id" value="2" checked> Pendiente
						      </label>
						    </div>
						 </div>      
					   </div>
					   <dic class="card-footer">
					   	 <button type="submit" class="btn btn-primary ajax" id="submit">
                            <i id="ajax-icon" class="fa fa-save"></i> Guardar
                         </button>
					   </dic>		 		      
	               </div>
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
