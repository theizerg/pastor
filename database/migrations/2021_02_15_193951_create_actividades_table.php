<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateActividadesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
       if(! Schema::hasTable('actividades')) {
            Schema::create('actividades', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('user_id')->unsigned()->nullable();
            $table->foreign('user_id', '35989_5913ebf64ed0b')->references('id')->on('users')->onDelete('cascade');
            $table->integer('status')->nullable();
           // $table->foreign('status_id', '35989_5913ebf652b9b')->references('id')->on('status')->onDelete('cascade');
            $table->string('hora_comienzo')->nullable();
            $table->string('hora_fin')->nullable();
            $table->string('fecha_inicio')->nullable();
            $table->string('fecha_fin')->nullable();
            $table->string('comentario')->nullable();
            
            $table->timestamps();
            $table->softDeletes();

            $table->index(['deleted_at']);
            });
        }
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('actividades');
    }
}
