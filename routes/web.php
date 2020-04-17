<?php

Route::get('/', function () {
    return view('welcome');
});


Route::get('/guardardatos', 'TecnomecanicaController@InsertaUnDato');
Route::get('/guardarvariosdatos', 'TecnomecanicaController@InsertarVariosDatos');
