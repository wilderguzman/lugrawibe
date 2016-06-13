<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateInformacionsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        
            Schema::create('informacions', function(Blueprint $table) {
                $table->increments('id');
                $table->string('nombre');
$table->string('cargo');
$table->integer('telefono_fijo');
$table->integer('telefono_celular');
$table->string('email');

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
        Schema::drop('informacions');
    }

}
