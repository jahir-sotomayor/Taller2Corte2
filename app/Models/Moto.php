<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Moto extends Model
{
    protected $table='motos';

    protected $fillable = [
        'nombre', 'marca', 'color', 'placa',
    ];

    public function tecnomecanicas(){
        return $this->morphMany('App\Models\Tecnomecanica', 'tecnomecanicatable');
    }
}
