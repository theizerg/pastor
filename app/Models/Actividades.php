<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Carbon\Carbon;

class Actividades extends Model
{
    


    protected $fillable = ['hora_comienzo', 'hora_fin', 'comentario', 'user_id','status','link_2'];






     public function setStartTimeAttribute($input)
    {
        if ($input != null && $input != '') {
            $this->attributes['hora_comienzo'] = Carbon::createFromFormat(config('app.date_format') . ' H:i:s', $input)->format('Y-m-d H:i:s');
        } else {
            $this->attributes['hora_comienzo'] = null;
        }
    }


     public function getEncodeIDAttribute()
    {
        return \Hashids::encode($this->id);
    }

    public function getDisplayStatusAttribute()
    {
        return $this->status == 1 ? 'Aceptado' : 'Pendiente';
    }




     /* Get attribute from date format
     * @param $input
     *
     * @return string
     */
    public function getStartTimeAttribute($input)
    {
        $zeroDate = str_replace(['Y', 'm', 'd'], ['0000', '00', '00'], config('app.date_format') . ' H:i:s');

        if ($input != $zeroDate && $input != null) {
            return Carbon::createFromFormat('Y-m-d H:i:s', $input)->format(config('app.date_format') . ' H:i:s');
        } else {
            return '';
        }
    }


    
    /**
     * Set attribute to date format
     * @param $input
     */
    public function setFinishTimeAttribute($input)
    {
        if ($input != null && $input != '') {
            $this->attributes['hora_fin'] = Carbon::createFromFormat(config('app.date_format') . ' H:i:s', $input)->format('Y-m-d H:i:s');
        } else {
            $this->attributes['hora_fin'] = null;
        }
    }

    /**
     * Get attribute from date format
     * @param $input
     *
     * @return string
     */
    public function getFinishTimeAttribute($input)
    {
        $zeroDate = str_replace(['Y', 'm', 'd'], ['0000', '00', '00'], config('app.date_format') . ' H:i:s');

        if ($input != $zeroDate && $input != null) {
            return Carbon::createFromFormat('Y-m-d H:i:s', $input)->format(config('app.date_format') . ' H:i:s');
        } else {
            return '';
        }
    }


     public function status(){
        return $this->belongsTo('App\Models\Status','status_id');
    }


     public function presbitero(){
        return $this->belongsTo('App\Models\User','user_id');
    }




    
}
