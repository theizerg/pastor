@extends('layouts.admin')

@section('title', 'Documentos')
@section('page_title', 'Documentos de la extensión')
@section('page_subtitle', 'Agregar')

@section('content')

<section class="container">
  <div class="row">
      <div class="col-md-12">
        <div class="btn-group">
          <a href="{{ url('iglesias') }}" class="btn blue darken-4 text-white"><i class="fas fa-sort-alpha-down-alt"></i> Listado</a>         
        </div>
      </div>
    </div>
    <br>
  <div class="row">
      <div class="col-md-12">
        <div class="card ">
        
        {!! Form::open(['route' => ['documento.store'],'method' => 'POST','autocomplete'=>'off','enctype' => 'multipart/form-data']) !!} 
              <div class="card-body">
                 <ul class="list-inline">
                   <li class="list-inline-item">
                      <a href="/" class="link_ruta">
                        Inicio &nbsp; &nbsp;<i class="fa fa-chevron-right" aria-hidden="true"></i>
                      </a>
                    </li>
                   <li class="list-inline-item">
                      <a href="/documento" class="link_ruta">
                        Documentos &nbsp; &nbsp;<i class="fa fa-chevron-right" aria-hidden="true"></i>
                      </a>
                    </li>

                  </ul><br>
                        
                <div class="form-group">
                	<label class="col sm 6">Agregue los documentos de la extensión</label>
                	<div class="col-sm-6">
                		<input type="file" class="form-control" name="nb_documento">
                	</div>
                </div>
                <input name="user_id" type="hidden" value=" {{ auth()->user()->id}}" id="user_id">
                <input name="iglesia_id" type="hidden" value=" {{ $iglesia->id}}" id="iglesia_id">
                   
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

