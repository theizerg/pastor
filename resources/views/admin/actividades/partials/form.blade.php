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
						        <input type="radio" name="status" value="2" checked> Pendiente
						        @can('RegistrarUsuario')
						        <input type="radio" name="status" value="1" checked> Aceptado
						        @endcan
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