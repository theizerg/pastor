<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateGrupoPlanesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('grupo_planes', function (Blueprint $table) {
            $table->increments('id');
            $table->string('nb_titulo');
            $table->string('nu_precio');
            $table->string('nb_color');
            $table->string('nb_cobro_plan');
            $table->string('fecha')->default(date('d/m/Y'));
            $table->integer('status_id')->unsigned();
            $table->foreign('status_id')->references('id')->on('status');
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
        Schema::dropIfExists('grupo_planes');
    }
}
