<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Noticium extends Model
{

    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'noticias';

    /**
     * Attributes that should be mass-assignable.
     *
     * @var array
     */
    protected $fillable = ['docente', 'materia', 'titulo', 'contenido', 'fecha_inicio', 'fecha_final'];

}
