@extends('layouts.admin')

@section('title', 'Iglesia')
@section('page_title', 'Datos de la iglesia')
@section('page_subtitle', 'Agregar')

@section('content')

<section class="container">
  <div class="row">
      <div class="col-md-12">
        <div class="btn-group">
          <a href="{{ url('pastor') }}" class="btn blue darken-4 text-white"><i class="fas fa-sort-alpha-down-alt"></i> Listado</a>         
        </div>
      </div>
    </div>
    <br>
  <div class="row">
      <div class="col-md-12">
        <div class="card ">
        <div class="card-header blue-gradient-dark text-white">
          <h4>Datos de la iglesia que pertenece al pastor: {{ $pastor->tx_nombres}} {{ $pastor->tx_apellidos}} </h4>
          
        </div>
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
        <form role="form" id="pastor_form">
            <input type="hidden" id="_url" value="{{ url('iglesia') }}">
            <input type="hidden" id="_token" value="{{ csrf_token() }}">
              <div class="card-body">
                @include('admin.pastor.partials.iglesia')  
                
              
              </div>
            <div class="card-footer">
              <button type="submit" class="btn btn-primary ajax" id="submit">
                <i id="ajax-icon" class="fa fa-save"></i> Guardar
              </button>
            </div>
         </form>
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
    <script src="{{ asset('js/admin/pastor/create.js') }}"></script>
    <script type="text/javascript">
      
jQuery(document).ready(function() {

     form = $('#pastor_form');
    
    $('#nb_ins_teologico').unbind('change');//borro evento click
    $('#nb_ins_teologico').on("change", function(e) { //asigno el evento change u otro
    if ( $("#nb_ins_teologico").val() == 'No')
                    {
                        
                        $('#nb_desc_ins_teologico').attr('disabled','disabled');
                        $('#nb_desc_ins_teologico').val('N/A');

                        $('#nu_tiempo_ins').attr('disabled','disabled');
                        $('#nu_tiempo_ins').val('N/A');

                        $('#nb_titulo_obtenido').attr('disabled','disabled');
                        $('#nb_titulo_obtenido').val('N/A');


                    }
                else
                {
                        $('#nb_desc_ins_teologico').removeAttr('disabled','disabled');
                        $('#nb_desc_ins_teologico').val('');

                        $('#nu_tiempo_ins').removeAttr('disabled','disabled');
                        $('#nu_tiempo_ins').val('');

                        $('#nb_titulo_obtenido').removeAttr('disabled','disabled');
                        $('#nb_titulo_obtenido').val('');
                }





    });

    $('#nb_sufre_enfermedad').unbind('change');//borro evento click
    $('#nb_sufre_enfermedad').on("change", function(e) { //asigno el evento change u otro
    if ( $("#nb_sufre_enfermedad").val() == 'No')
                    {
                        
                        $('#nb_descripcion_enfermedad').attr('disabled','disabled');
                        $('#nb_descripcion_enfermedad').val('N/A');


                    }
                    else
                    {
                        $('#nb_descripcion_enfermedad').removeAttr('disabled','disabled');
                        $('#nb_descripcion_enfermedad').val('');

                    }
                    



    });

});


    </script>
@endpush
