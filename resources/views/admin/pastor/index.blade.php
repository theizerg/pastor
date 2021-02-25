 @extends('layouts.admin')

@section('title', 'Pastores')
@section('page_title', 'Pastores')
@section('page_subtitle', 'Listado')

@section('breadcrumb')
    @parent
    <li><a href="{{ url('/') }}"><i class="fa fa-dashboard"></i> Inicio</a></li>
    <li><a href="{{ url('pastor') }}">pastores</a></li>
    <li class="active">Listado</li>
@endsection

@section('content')
 <div class="container">
<div class="row">
  <div class="col-md-6">
    <div class="btn-group">
      @can('CrearPastores')
      <a href="{{ url('pastor/create') }}" class="btn blue darken-4 text-white"><i class="fa fa-plus-square"></i> Ingresar</a>
      @endcan
    </div>
  </div>
</div>
<br>
   <div class="row">
        <div class="col-md-12">
          <div class="card">
            <div class="card-header blue-gradient-dark text-white">
              <h3 class="card-title">Listado de pastores</h3>
              <div class="card-tools">
                <form>
                  <input type="hidden" id="_url" value="{{ url('') }}">
                  <input type="hidden" id="_token" value="{{ csrf_token() }}">
                 </form>
              </div>
            </div>
            <div class="card-body table-responsive table-striped">
              <table id="example" class="table table-bordered table-hover">
               <thead>
                <tr>
                    <th>Nombres</th>
                    <th>Cédula</th>
                    <th>Correo electrónico</th>
                    <th>Grado ministerial</th>
                    <th>Estado del pastor</th>
                    <th>Opciones</th>
                </tr>
                </thead>
                <tbody>
                @foreach ($pastores as $value)
                <tr>
                  <td>{{ $value->tx_nombres}} {{ $value->tx_apellidos}}</td>
                  <td>{{ $value->nu_cedula}}</td>
                  <td>{{ $value->tx_correo}}</td>
                  <td>{{ $value->empGradoMinisterial->nb_grado_ministerial}}</td>
                  <td><span class="badge text-white fa-1x {{ $value->status ? 'green' : 'red' }}">{{ $value->display_status }}</span></td>
                 
                  <td>
                       <a class="btn btn-round blue darken-4" href="{{ url('pastor', [$value->encode_id]) }}"><i class="mdi mdi-account  text-white"></i> </a>
                       
                       <a class="btn btn-round red darken-4" href="{{ url('pastor', [$value->encode_id,'edit']) }}"><i class="mdi mdi-tooltip-edit  text-white"></i></a>
                       <a class="btn btn-round green darken-4" href="{{ url('imprimir', [$value->encode_id]) }}"><i class="mdi mdi-printer  text-white"></i> </a>  
                       <a class="btn btn-round yellow darken-4" href="{{ url('pastor', [$value->encode_id,'iglesia']) }}"><i class="mdi mdi-church text-white"></i> </a>                    
                  </td>
                </tr>
                @endforeach
              </tbody>
              </table>

              
            </div>
          </div>
        </div>
      </div>
 </div>
    @endsection





