<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class informacion extends Model
{

    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'informacions';

    /**
     * Attributes that should be mass-assignable.
     *
     * @var array
     */
    protected $fillable = ['nombre', 'cargo', 'telefono_fijo', 'telefono_celular', 'email'];

}
