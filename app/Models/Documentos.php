<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Documentos extends Model
{
    


    public function iglesia(){
        return $this->belongsTo('App\Models\Iglesias','iglesia_id');
    }
}
