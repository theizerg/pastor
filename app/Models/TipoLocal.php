<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class TipoLocal extends Model
{
     protected $table = 'tipo_local';



    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'nb_nombre'
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'create_at',
    ];
}
