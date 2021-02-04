<h4 class="text-center">
  Datos eclesiásticos
</h4><br>
 <div class="row">
       
        <div class="col-md-3">
          <div class="box-body">
            <div class="form-group">
              <div class="input-group">
                <label for="nb_bau_Espiritu_Santo">¿Bautizado(a) con el Espíritu Santo?</label>
                <div class="checkbox icheck">
                  <label>
                    <input type="radio" name="nb_bau_Espiritu_Santo" value="Si" checked> Si
                    <input type="radio" name="nb_bau_Espiritu_Santo" value="No"> No
                  </label>
                </div>
              </div>
              </div>
            </div>
          </div>
          <div class="col-md-3">
           <div class="box-body">
              <div class="form-group">
                <label for="role">Grado ministerial</label>
                <div class="input-group">
                  
                  {!! Form::select('grado_ministerial_id', $gradoMin, null,array('class' => 'form-control input-sm','placeholder'=>'Grado ministerial','id'=>'grado_ministerial_id')) !!}
                </div>
              </div>
            </div>
          </div>

        <div class="col-md-3">
          <div class="box-body">
              <div class="form-group">
                <label for="role">Zona</label>
                <div class="input-group">
                  
                  {{ Form:: text('nu_zona',null,['class'=>'form-control','placeholder' => 'Zona que pertenece','id'=>'nu_zona']) }}
                </div>
              </div>
            </div>
          </div>
            <div class="col-md-3">
            <div class="box-body">
              <div class="form-group">
                <label for="role">Tiempo de trabajo</label>
                <div class="input-group">
                  
                   {{ Form:: text('fe_ingreso',null,['class'=>'form-control','placeholder' => 'Ejemplo: 1 mes','id'=>'fe_ingreso']) }}
                </div>
              </div>
            </div>
          </div>
        </div>
  <div class="row">
       <div class="col-md-3">
            <div class="box-body">
              <div class="form-group">
                <label>¿Estudios Teológicos?</label>
                <select class="form-control select2" style="width: 100%;" id ="nb_ins_teologico" name="nb_ins_teologico">
                  <option selected="selected">Seleccione</option>
                  <option value="Si">Si</option>
                  <option value="No">No</option>
                </select>
              </div>
            </div>
          </div>
        <div class="col-md-3">
          <div class="box-body">
              <div class="form-group">
                <label for="role">Nombre del instituto teológico</label>
                <div class="input-group">
                  <div class="input-group-addon">
                    <i class="glyphicon glyphicon-lock"></i>
                  </div> 
                  {{ Form:: text('nb_desc_ins_teologico',null,['class'=>'form-control','placeholder' => 'Nombre del instituto teológico','id'=>'nb_desc_ins_teologico']) }}
                </div>
              </div>
            </div>
          </div>
         <div class="col-md-3">
          <div class="box-body">
              <div class="form-group">
                <label for="role">Tiempo de estudio</label>
                <div class="input-group">
                  
                  {{ Form:: text('nu_tiempo_ins',null,['class'=>'form-control','placeholder' => 'Tiempo de estudio','id'=>'nu_tiempo_ins']) }}
                </div>
              </div>
            </div>
          </div>
            <div class="col-md-3">
            <div class="box-body">
              <div class="form-group">
                <label for="role">Título obtenido</label>
                <div class="input-group">
                 
                   {{ Form:: text('nb_titulo_obtenido',null,['class'=>'form-control','placeholder' => 'Título obtenido','id'=>'nb_titulo_obtenido']) }}
                </div>
              </div>
            </div>
          </div>
        </div>


         