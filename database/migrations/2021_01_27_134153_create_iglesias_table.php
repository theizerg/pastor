<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateIglesiasTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('iglesias', function (Blueprint $table) {
            $table->increments('id');
            $table->string('nb_nombre');
            $table->integer('nu_zona');
            $table->string('nb_urbanizacion');
            $table->string('nb_edificio');
            $table->string('nu_casa');
            $table->string('nb_parroquia');
            $table->string('nb_municipio');
            $table->string('nb_ciudad');
            $table->integer('estado_id')->unsigned();
            $table->foreign('estado_id')->references('id')->on('estado');
            $table->string('nu_codigo_postal');
            $table->string('nu_telefono');
            $table->integer('tipo_local_id')->unsigned();
            $table->foreign('tipo_local_id')->references('id')->on('tipo_local');      
            $table->integer('pastor_id')->unsigned();
            $table->foreign('pastor_id')->references('id')->on('pastor');    
            $table->integer('users_id')->unsigned();
            $table->foreign('users_id')->references('id')->on('users');   
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('iglesias');
    }
}
