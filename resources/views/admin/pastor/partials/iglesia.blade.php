<h4 class="text-center">
        Ingrese los datos
</h4><br>
<div class="row">
      <div class="col-sm-6">
         <div class="form-group">
          <label>Extensión</label>
            {{ Form:: text('nb_nombre',null,['class'=>'form-control','placeholder' => 'Extensión','id'=>'nb_nombre']) }}
             <input name="users_id" type="hidden" value=" {{ auth()->user()->id}}" id="users_id">

             
          </div>
      </div> 
      <div class="col-sm-6">
         <div class="form-group">
          <label>Zona que pertenece</label>
            {{ Form:: number('nu_zona',null,['class'=>'form-control','placeholder' => 'Nombre de la iglesia','id'=>'nu_zona']) }}
            
          </div>
      </div> 
  </div>

    <h4 class="text-center mt-3">
        Ingrese los datos de la ubicación de la congregación
</h4><br>

<div class="row">
    <div class="col-sm-6">
         <div class="form-group">
          <label>Calle / carrera / avenida </label>
            {{ Form:: text('nb_urbanizacion',null,['class'=>'form-control','placeholder' => 'Calle / carrera / avenida ','id'=>'nb_urbanizacion']) }}
            
          </div>
    </div>  
	 <div class="col-sm-6">
         <div class="form-group">
          <label>Edificio / conjunto / quinta  </label>
            {{ Form:: text('nb_edificio',null,['class'=>'form-control','placeholder' => 'Edificio / conjunto / quinta  ','id'=>'nb_edificio']) }}
            
          </div>
    </div>
	<div class="col-sm-6">
         <div class="form-group">
          <label>N°. de piso / apartamento / casa  </label>
            {{ Form:: number('nu_casa',null,['class'=>'form-control','placeholder' => 'N°. de piso / apartamento / casa  ','id'=>'nu_casa']) }}
            
          </div>
    </div>
    <div class="col-sm-6">
         <div class="form-group">
          <label>Parroquia </label>
            {{ Form:: text('nb_parroquia',null,['class'=>'form-control','placeholder' => 'Parroquia ','id'=>'nb_parroquia']) }}
            
          </div>
    </div>
     <div class="col-sm-6">
         <div class="form-group">
          <label>Municipio </label>
            {{ Form:: text('nb_municipio',null,['class'=>'form-control','placeholder' => 'Municipio','id'=>'nb_municipio']) }}
            
          </div>
    </div>
    <div class="col-sm-6">
         <div class="form-group">
          <label>Ciudad </label>
            {{ Form:: text('nb_ciudad',null,['class'=>'form-control','placeholder' => 'Ciudad','id'=>'nb_ciudad']) }}
            
          </div>
    </div>
    <div class="col-sm-6">
      <label>Estado del país</label>
        <div class="form-group">
           {!! Form::select('estado_id', $estado, null,array('class' => 'form-control input-sm','placeholder'=>'Selecione un estado del país','id'=>'estado_id')) !!}    
      </div> 
    </div>
	<div class="col-sm-6">
         <div class="form-group">
          <label>Zona postal </label>
            {{ Form:: number('nu_codigo_postal',null,['class'=>'form-control','placeholder' => 'Zona postal  ','id'=>'nu_codigo_postal']) }}
            
          </div>
    </div>
	<div class="col-sm-6">
	     <div class="form-group">
	      <label>Teléfono	 </label>
	        {{ Form:: number('nu_telefono',null,['class'=>'form-control','placeholder' => 'Teléfono ','id'=>'nu_telefono']) }}
	        
	      </div>
	 </div>
	 <div class="col-sm-6">
      <label>Tipo del local de culto</label>
        <div class="form-group">
           {!! Form::select('tipo_local_id', $locales, null,array('class' => 'form-control input-sm','placeholder'=>'Selecione tipo del local','id'=>'estado_id')) !!}    
      </div> 
    </div>

</div>