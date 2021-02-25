<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Iglesias extends Model
{
    

     protected $fillable = [
        'nb_nombre', 'nu_zona', 'nb_urbanizacion', 'nb_edificio', 'nu_casa','nb_parroquia','nb_municipio',
        'nb_ciudad', 'estado_id', 'nu_codigo_postal', 'nu_telefono', 'tipo_local_id','pastor_id','users_id'
    ];





public function tipolocal(){
        return $this->belongsTo('App\Models\TipoLocal','tipo_local_id');
    }


public function pastor(){
        return $this->belongsTo('App\Models\Pastor','pastor_id');
    }


public function estado(){
        return $this->belongsTo('App\Models\Estado','estado_id');
    }

 public function ciudad(){
        return $this->belongsTo('App\Models\Pais','_id');
    }


    public function getEncodeIDAttribute()
    {
        return \Hashids::encode($this->id);
    }




 }
