<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Cabecera;
use App\Models\Somos;
use App\Models\SomosCuadros;
use App\Models\Proyecto;
use App\Models\GrupoProyectos;
use App\Models\Planes;
use App\Models\GrupoPlanes;
use App\Models\Cursos;
use Carbon\Carbon;



class TestController extends Controller
{
    
     public function index()
    {
    
          $encabezado = Cabecera::where('status_id',1)->first();
          $somos = Somos::where('status_id',1)->first();
          $proyectos = Proyecto::where('status_id',1)->first();
          $grupoProyectos = GrupoProyectos::where('status_id',1)->get();
          $cuadros = SomosCuadros::where('status_id',1)->get();
          $planes = Planes::where('status_id',1)->first();
          $grupoPlanes = GrupoPlanes::where('status_id',1)->get();
          $planesGrupo = GrupoPlanes::pluck('nb_titulo','id')->get();
          $cursos = Cursos::where('status_id',1)
          ->get();
         //dd($encabezado);
          return view ('welcome', compact('somos','encabezado','cuadros','proyectos','grupoProyectos','planes','grupoPlanes','cursos','planesGrupo'));


    }
}
