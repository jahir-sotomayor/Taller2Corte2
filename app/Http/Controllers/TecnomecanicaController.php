<?php

namespace App\Http\Controllers;

use App\Models\Carro;
use App\Models\Moto;
use Illuminate\Http\Request;

class TecnomecanicaController extends Controller
{
    public function InsertaUnDato(){
        $tecnomecanicaCarro = App\Models\Carro::find(2);
        $tecnomecanicaCarro->tecnomecanicas()->create([
            'nombre' => 'jorge',
            'descripcion' => 'hyundai',
        ]);  

        return $tecnomecanicaCarro->tecnomecanicas;
    }

    public function InsertarVariosDatos (){
        $tecnomecanicaMoto = Moto::find(4);
        $tecnomecanicaMoto->tecnomecanicas()->createMany([
            ['nombre' => 'nestor',
            'descripcion' => 'boxer'],
            ['nombre' => 'edwin',
            'descripcion' => 'diecover'],
            ['nombre' => 'jerey',
            'descripcion' => 'bwis'],
        ]);

        return $tecnomecanicaMoto->tecnomecanicas;
        
    }

}
