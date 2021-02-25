@extends('layouts.admin')

@section('title', 'Pastores')
@section('page_title', 'Pastores')
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
        
        {!! Form::open(['route' => ['pastor.store'],'method' => 'POST','autocomplete'=>'off','enctype' => 'multipart/form-data']) !!} 
              <div class="card-body">
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
                     @include('admin.pastor.partials.form')
                     @include('admin.pastor.partials.eclesiasticos')        
                     @include('admin.pastor.partials.medicos')        
                     @include('admin.pastor.partials.estado')  
              
              </div>
            <div class="card-footer">
              <button type="submit" class="btn btn-primary ajax" id="submit">
                <i id="ajax-icon" class="fa fa-save"></i> Guardar
              </button>
            </div>
          {!! Form::close()!!}
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
     $(".form-hijos").hide();
     $(".nb_hijos").hide();
     $('#form-hijos').val(0);
    $('#nb_ins_teologico').unbind('change');//borro evento click
    $('#nb_ins_teologico').on("change", function(e) { //asigno el evento change u otro
    if ( $("#nb_ins_teologico").val() == 'No')
                    {
                        
                        $('#nb_desc_ins_teologico').attr('enabled','enabled');
                        $('#nb_desc_ins_teologico').val('N/A');

                        $('#nu_tiempo_ins').attr('enabled','enabled');
                        $('#nu_tiempo_ins').val('N/A');

                        $('#nb_titulo_obtenido').attr('enabled','enabled');
                        $('#nb_titulo_obtenido').val('N/A');


                    }
                else
                {
                        $('#nb_desc_ins_teologico').removeAttr('enabled','enabled');
                        $('#nb_desc_ins_teologico').val('');

                        $('#nu_tiempo_ins').removeAttr('enabled','enabled');
                        $('#nu_tiempo_ins').val('');

                        $('#nb_titulo_obtenido').removeAttr('enabled','enabled');
                        $('#nb_titulo_obtenido').val('');
                }





    });

    $('#nb_sufre_enfermedad').unbind('change');//borro evento click
    $('#nb_sufre_enfermedad').on("change", function(e) { //asigno el evento change u otro
    if ( $("#nb_sufre_enfermedad").val() == 'No')
        {
            
            $('#nb_descripcion_enfermedad').attr('enabled','enabled');
            $('#nb_descripcion_enfermedad').val('N/A');


        }
        else
        {
            $('#nb_descripcion_enfermedad').removeAttr('enabled','enabled');
            $('#nb_descripcion_enfermedad').val('');

        }
                    



    });

    $('#nb_hijos').unbind('change');//borro evento click
    $('#nb_hijos').on("change", function(e) { //asigno el evento change u otro
    if ( $("#nb_hijos").val() == 'Si')
                    {
                       $(".form-hijos").show();


                    }
                    else
                    {
                        $(".form-hijos").hide();
                        $('#nu_carga_familiar_hijos').val(0);

                    }
                    



    });

$('#estado_civil_id').unbind('change');//borro evento click
    $('#estado_civil_id').on("change", function(e) { //asigno el evento change u otro

if ( $("#estado_civil_id").val() == '1')
                    {
                       $(".nb_hijos").hide();
                        $('#form-hijos').val(0);


                    }
  else if ( $("#estado_civil_id").val() == '2')
                    {
                       $(".nb_hijos").show();


                    }
                    else if ( $("#estado_civil_id").val() == '3') {

                     $(".nb_hijos").show();
                    }
                    else
                    {
                        $(".form-hijos").hide();
                        $(".nb_hijos").hide();
                        $('#form-hijos').val(0);

                    }
                    



    });
   
});

    </script>
@endpush
