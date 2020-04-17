<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTecnomecanicasTable extends Migration
{
    public function up()
    {
        Schema::create('tecnomecanicas', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('nombre');
            $table->string('descripcion');
            $table->integer('tecnomecanicatable_id');
            $table->string('tecnomecanicatable_type');
            $table->timestamps();
        });
    }

    public function down()
    {
        Schema::dropIfExists('tecnomecanicas');
    }
}
