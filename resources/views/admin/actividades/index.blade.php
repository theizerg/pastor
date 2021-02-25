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
 <div class="row">
  <div class="col-md-6">
    <div class="btn-group">
      @can('CrearActividades')
      <a href="{{ url('actividades/create') }}" class="btn blue darken-4 text-white"><i class="fa fa-plus-square"></i> Ingresar</a>
      @endcan
    </div>
  </div>
</div>
<br>
   <div class="row">
        <div class="col-md-12">
          <div class="card">
            <div class="card-header blue-gradient-dark text-white">
              <h3 class="card-title">Listado de las actividades</h3>
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
                  <div id="calendar"></div><br>
                  <table id="example" class="table table-bordered table-hover">
                     <thead>
                      <tr>
                      	  <th>#</th>
                           <th>Fecha Inicio - Fin</th>
                          <th>Hora Inicio - Fin</th>
                          <th>Presbítero</th>
                          <th>Estado</th>
                          <th>Documentos</th>

                          
                      </tr>
                      </thead>
                      <tbody>
                      @foreach ($actividades as $value)
                      <tr>
                      	<td> {{$value->id }} </td>
                        <td>{{ $value->fecha_inicio}} - {{ $value->fecha_fin}}</td>
                        <td>{{ $value->hora_comienzo}} - {{ $value->hora_fin}}</td>
                        <td>{{ $value->presbitero->display_name}}</td>
                        <td><span class="badge text-white fa-1x {{ $value->status ? 'bg-success' : 'bg-danger' }}">{{ $value->display_status }}</span></td>
                       <td><a class="btn btn-round blue darken-4" href="{{ url('actividades', [$value->encode_id]) }}"><i class="mdi mdi-file  text-white"></i> </a>
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
    @push('scripts')
   <!--  <script>
        $(document).ready(function() {
            // page is now ready, initialize the calendar...
            $('#calendar').fullCalendar({
                // put your options and callbacks here
                defaultView: 'agendaWeek',
                events : [
                        @foreach($actividades as $appointment)
                    {
                        title : 'Actividades registradas',
                        start : '{{ $appointment->hora_comienzo }}',
                        @if ($appointment->hora_comienzo)
                                end: '{{ $appointment->hora_comienzo }}',
                        @endif
                        url : '{{ route('actividades.edit', $appointment->id) }}'
                    },
                    @endforeach
                ]
            })
        });
    </script> -->
    @endpush
