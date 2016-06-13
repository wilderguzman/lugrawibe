<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateNoticiasTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        
            Schema::create('noticias', function(Blueprint $table) {
                $table->increments('id');
                $table->string('docente');
$table->string('materia');
$table->string('titulo');
$table->text('contenido');
$table->date('fecha_inicio');
$table->date('fecha_final');

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
        Schema::drop('noticias');
    }

}
