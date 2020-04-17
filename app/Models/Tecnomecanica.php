<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Tecnomecanica extends Model
{
    protected $table='tecnomecanicas';

    protected $fillable = [
        'nombre', 'descripcion', 'tecnomecanicatable_id', 'tecnomecanicatable_type',
    ];

    public function tecnomecanicatable(){
        return $this->morphTo();
    }


}
