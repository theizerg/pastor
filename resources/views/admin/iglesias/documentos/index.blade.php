 @extends('layouts.admin')

@section('title', 'Documentos')
@section('page_title', 'Documentos')
@section('page_subtitle', 'Listado')

@section('breadcrumb')
    @parent
    <li><a href="{{ url('/') }}"><i class="fa fa-dashboard"></i> Inicio</a></li>
    <li><a href="{{ url('iglesias') }}">iglesiases</a></li>
    <li class="active">Listado</li>
@endsection

@section('content')
 <div class="container">
<br>
   <div class="row">
        <div class="col-md-12">
          <div class="card">
            <div class="card-header blue-gradient-dark text-white">
              <h3 class="card-title">Listado de los documentos de las extensiones</h3>
              <div class="card-body">
                 <ul class="list-inline">
                   <li class="list-inline-item">
                      <a href="/" class="link_ruta">
                        Inicio &nbsp; &nbsp;<i class="fa fa-chevron-right" aria-hidden="true"></i>
                      </a>
                    </li>
                  </ul><br>
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
                    <th>Extensión</th>
                    <th>Zona</th>
                    <th>Pastor</th>
                    <th>Opciones</th>
                    
                </tr>
                </thead>
                <tbody>
                @foreach ($documentos as $value)
                <tr>
                  <td>{{ $value->iglesia->nb_nombre}}</td>
                  <td>{{ $value->iglesia->nu_zona}}</td>          
                  <td>{{ $value->iglesia->pastor->display_name}}</td>
                  <td><a class="btn btn-round blue darken-4" href="{{ url('documento', [$value->id]) }}"><i class="mdi mdi-download  text-white"></i> </a>
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





