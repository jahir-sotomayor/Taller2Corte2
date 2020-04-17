<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Carro extends Model
{
    protected $table='carros';

    protected $fillable = [
        'nombre', 'marca', 'color', 'placa',
    ];

    public function tecnomecanicas(){
        return $this->morphMany('App\Models\Tecnomecanica', 'tecnomecanicatable');
    }
}
