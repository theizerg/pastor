@extends('layouts.admin')

@section('title', 'Past ores')
@section('page_title', 'Pastores')
@section('page_subtitle', 'Datos')

@section('breadcrumb')
    @parent
    <li><a href="{{ url('/') }}"><i class="fa fa-dashboard"></i> Inicio</a></li>
    <li><a href="{{ url('pastor') }}">Pastores</a></li>
    <li class="active">datos</li>
@endsection

@section('content')

<section class="container">
  <div class="row">
  <div class="col-md-6">
    <div class="btn-group">
      @can('RegistrarUsuario')
      <a href="{{ url('pastor/create') }}" class="btn btn-primary"><i class="fa fa-plus-square"></i> Ingresar</a>
      @endcan
    </div>
  </div>
</div>
<br>
<div class="card">
  <div class="row">
    <div class="col-sm-12">
      <h2 class="card-header blue-gradient-dark text-white">
         Datos personales, eclesiásticos y datos médicos del pastor
      </h2>
    </div>
  <div class="row card-body">
    <ul class="list-inline">
                   <li class="list-inline-item">
                      <a href="/" class="link_ruta">
                        Inicio &nbsp; &nbsp;<i class="fa fa-chevron-right" aria-hidden="true"></i>
                      </a>
                    </li>
                   <li class="list-inline-item">
                      <a href="/pastor" class="link_ruta">
                        Listado &nbsp; &nbsp;<i class="fa fa-chevron-right" aria-hidden="true"></i>
                      </a>
                    </li>
                   <li class="list-inline-item">
                      <a href="/psator/create" class="link_ruta">
                        Nuevo
                      </a>
                    </li>
                  </ul><br>
    <div class="col-sm-3 invoice-col">
      <strong>Nombre completo</strong><br>
        {{ $pastor->tx_nombres }} {{ $pastor->tx_apellidos }}
    </div>
    <div class="col-sm-3 invoice-col">
      <strong>Cédula</strong>
      <br>
    	 {{ $pastor->nu_cedula }}
    </div>
    <div class="col-sm-3 invoice-col">
      <strong>Edad</strong>
      <br>
      {{ $pastor->nu_edad }}
    </div>
    <div class="col-sm-3 invoice-col">
      <strong>Correo electrónico</strong><br>
   		{{ $pastor->tx_correo }}
    </div>
  </div>
  <br>
  <div class="row card-body">
    <div class="col-sm-3 invoice-col">
      <strong>Teléfono</strong><br>
      {{ $pastor->nu_telefono }} 
    </div>
    <div class="col-sm-3 invoice-col">
      <strong>Fecha de nacimiento</strong>
      <br>
      {{ $pastor->fe_nacimiento }} 
    </div>
    <div class="col-sm-3 invoice-col">
      <strong>Lugar de nacimiento</strong><br>

     {{ $pastor->empPais->nb_pais }}
    </div>
    <div class="col-sm-3 invoice-col">
      <strong>Nacionalidad</strong><br>
      {{ $pastor->empNacionalidad->nb_nacionalidad }}
    </div>
  </div>
  <br>
  <div class="row card-body">
   <div class="col-sm-3 invoice-col">
      <strong>Dirección</strong><br>
   		{{ $pastor->tx_direccion }} , {{ $pastor->empEstado->nb_estado }} , {{ $pastor->empPais->nb_pais }}
    </div>
   <div class="col-sm-3 invoice-col">
      <strong>Género</strong><br>
   	 {{ $pastor->empGenero->nb_genero }}
    </div>
  	<div class="col-sm-3 invoice-col">
      <strong>Estado civil</strong><br>
   	 {{ $pastor->empEstadoCivil->nb_estado_civil }}
    </div>  
   	<div class="col-sm-3 invoice-col">
      <strong>Grado de instrucción</strong><br>
   	 {{ $pastor->empGradoInstruccion->nb_grado_instruccion }}
    </div>
   </div><br>
<div class="row card-body">
   <div class="col-sm-6 invoice-col">
      <strong>Nota</strong><br>
   	 {{ $pastor->tx_nota }}
    </div>
     <div class="col-sm-6 invoice-col">
      <strong>Ocupación</strong><br>
   	 {{ $pastor->nb_ocupacion }}
    </div>
</div>
  <br>
  <br>
  <br>
  <div class="row card-body">
    <div class="col-sm-3 invoice-col">
      <strong>¿Bautismo del Espíritu Santo?</strong><br>
        {{ $pastor->nb_bau_Espiritu_Santo }}
    </div>
    <div class="col-sm-3 invoice-col">
      <strong>¿Instituto teológico?</strong>
      <br>
    	 {{ $pastor->nb_ins_teologico }}
    </div>
    <div class="col-sm-3 invoice-col">
      <strong>Descripción de instituto</strong>
      <br>
      {{ $pastor->nb_desc_ins_teologico }}
    </div>
    <div class="col-sm-3 invoice-col">
      <strong>Tiempo de estudio</strong><br>
   		{{ $pastor->nu_tiempo_ins }}
    </div>
  </div>
  <br>
  <div class="row card-body">
    <div class="col-sm-3 invoice-col">
      <strong>Título Obtenido</strong><br>
      {{ $pastor->nb_titulo_obtenido }} 
    </div>
    <div class="col-sm-3 invoice-col">
      <strong>Grado ministerial</strong>
      <br>
      {{ $pastor->empGradoMinisterial->nb_grado_ministerial }} 
    </div>
    <div class="col-sm-3 invoice-col">
      <strong>Tiempo de servicio</strong><br>

     {{ $pastor->fe_ingreso }}
    </div>
    <div class="col-sm-3 invoice-col">
      <strong>Zona</strong><br>
      {{ $pastor->nu_zona }}
    </div>
  </div>
  <br>
  <br>
  <br>
    <div class="row card-body">
    <div class="col-sm-4 invoice-col">
      <strong>¿Sufre de alguna enfermedad?</strong><br>
        {{ $pastor->nb_sufre_enfermedad }}
    </div>
    <div class="col-sm-4 invoice-col">
      <strong>Describa la enfermedad</strong>
      <br>
    	 {{ $pastor->nb_descripcion_enfermedad }}
    </div>
    <div class="col-sm-4 invoice-col">
      <strong>Tipo de sangre</strong>
      <br>
      {{ $pastor->empTipoSangre->nb_tipo_sangre }}
    </div>
  </div>
  <br>
  <br>
  <div class="row">
    <div class="col-md-6">
     
    
      
    </div>
  </div>
  </div>
</section>

@endsection
