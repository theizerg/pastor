<?php

namespace App\Http\Controllers;

use App\Models\Actividades;
use App\Models\Notificaciones;
use Illuminate\Http\Request;
use Spatie\Permission\Models\Role;

class ActividadesController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
         if (auth()->user()->hasRole('Administrador')) {
        $roles = Role::get();
        $actividades = Actividades::get();
        $notificaciones = Notificaciones::count();
        $descripNot = Notificaciones::get();
         return view('admin.actividades.index', compact('roles','actividades','notificaciones','descripNot'));
     }

        $roles = Role::get();
        $actividades = Actividades::where('user_id',auth()->user()->id)->get();
        $notificaciones = Notificaciones::count();
        $descripNot = Notificaciones::get();
         return view('admin.actividades.index', compact('roles','actividades','notificaciones','descripNot'));

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $roles = Role::get();
        $notificaciones = Notificaciones::count();
        $descripNot = Notificaciones::get();
         return view('admin.actividades.create', compact('roles','notificaciones','descripNot'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        

        $appointment = new Actividades;
        $appointment->user_id = $request->user_id;
        $appointment->status = $request->status_id;
        $appointment->hora_comienzo = $request->hora_comienzo;
        $appointment->hora_fin = $request->hora_fin;
        $appointment->comentario = $request->comentario;
        $appointment->fecha_inicio = $request->fecha_inicio;
        $appointment->fecha_fin = $request->fecha_fin;
        $appointment->save();


        if ( $appointment->id <> null){

        $titulo = "Actividad registrada";
        $texto = "El presbítero " .\Auth::user()->display_name. " de la zona " . \Auth::user()->nu_zona.' Ha cargado una actividad'. 'desde el: '.$appointment->fecha_inicio.' Hasta '.$appointment->fecha_fin; 
        $link_texto = "Ver datos de la actividad";
        $link = "/actividades/".$appointment->encode_id;
        $link_2 = "/actividades/".$appointment->encode_id."/edit";
        $tipo = 1;
        Notificaciones::crearNotificacion($titulo, $texto, $link,$link_texto, $tipo);

        }

         $notification = array(
          'message' => '¡Registro guardado!',
          'alert-type' => 'success'
      );
       return \Redirect::to('actividades')->with($notification);




    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Actividades  $actividades
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        


         $actividad = Actividades::find(\Hashids::decode($id)[0]);
        

        $id_imp = 189;
        $fecha = "04/07/2018";
        $pdf = app('FPDF');

        $pdf->AddPage();


       
        $pdf->Ln(1);
        
        //$pdf->Image('images/mmm.png',10,5,40,25,'PNG');
        $pdf->Ln(1);
        $pdf->SetY(20);
        $pdf-> SetFillColor(234, 231, 230);
        $pdf->Image('images/logo/fondo-logo.png',6,5,40,25,'PNG');

         $pdf->SetY(10);
         $pdf->SetFont('Arial','B',12);
         $pdf->SetXY(45,15);
         $pdf->Cell(100,5,utf8_decode('Iglesia Cristiana Pentecostés de Venezuela'),0,1,'C');
         $pdf->Ln(10);
         $pdf->SetXY(51,20);
         $pdf->SetFont('Arial','B',10);
         $pdf->Cell(130,5,utf8_decode("Movimiento Misionero Mundial." ),0,1,'L');
         $pdf->SetXY(150,10);
        
         $pdf->SetXY(175, 10);
         $pdf->SetFont('Arial','B',6);

         $pdf->Ln(1);
         $pdf->SetXY(48,30);
         $pdf->SetFont('Arial','B',16);
         $pdf->Cell(128,5,utf8_decode("Planilla de actividades." ),0,1,'C');
         //titulos encabezado
         $pdf->SetXY(10, 40);
         $pdf->SetFont('Arial','B',8);
         $pdf->Cell(190,5,utf8_decode("DATOS DE LA IGLESIA CENTRAL"),1,1,'C',true);
         $pdf->SetXY(10, 45);
         $pdf->SetFont('Arial','B',6);
         $pdf->Cell(80,5,utf8_decode("NOMBRE DE LA ORGANIZACIÓN:"),1,1,'L');
         $pdf->SetXY(90, 45);
         $pdf->Cell(30,5,utf8_decode("R.I.F:"),1,1,'L');
         $pdf->SetXY(120, 45);
         $pdf->Cell(80,5,utf8_decode("SEDE CENTRAL:"),1,1,'L');

         // datos del encabezado
         $pdf->SetFont('Arial','',6);
         $pdf->SetXY(10, 50);
         $pdf->Cell(80,5,utf8_decode("iglesia Cristiana pentecostés de Venezuela Movimiento Misionero Mundial"),1,1,'C');
         $pdf->SetXY(90, 50);
         $pdf->Cell(30,5,utf8_decode("G-20004752-6"),1,1,'C');
         $pdf->SetXY(120, 50);
         $pdf->Cell(80,5,utf8_decode("CATIA-CARACAS"),1,1,'C');

          //titulos
         $pdf->SetXY(10, 55);
         $pdf->SetFont('Arial','B',8);
         $pdf->Cell(190,5,utf8_decode("DATOS DE LA ACTIVIDAD A DESARROLLAR"),1,1,'C',true);
         $pdf->SetFont('Arial','B',6);
         $pdf->SetXY(10, 60);
         $pdf->Cell(50,5,utf8_decode("FECHA DE INICIO:"),1,1,'L');
         $pdf->SetXY(60, 60);
         $pdf->Cell(40,5,utf8_decode("FECHA FIN:"),1,1,'L');
         $pdf->SetXY(100, 60);
         $pdf->Cell(50,5,utf8_decode("HORA DE INICIO:"),1,1,'L');
         $pdf->SetXY(150, 60);
         $pdf->Cell(50,5,utf8_decode("HORA FIN:"),1,1,'L');

         $pdf->SetFont('Arial','',7);
         $pdf->SetXY(10, 65);
         $pdf->Cell(50,5,$actividad->fecha_inicio,1,1,'C');
         $pdf->SetXY(60, 65);
         $pdf->Cell(40,5,$actividad->fecha_fin,1,1,'C');
         $pdf->SetXY(100, 65);
         $pdf->Cell(50,5,$actividad->hora_comienzo,1,1,'C');
         $pdf->SetXY(150, 65);
         $pdf->Cell(50,5,$actividad->hora_fin,1,1,'C');
         $pdf->SetXY(10, 70);
         $pdf->SetFont('Arial','B',8);
         $pdf->Cell(190,5,utf8_decode("DESCRIPCIÓN DE LA ACTIVIDAD"),1,1,'C',true);
         $pdf->SetFont('Arial','B',6);
         $pdf->SetXY(10, 75);
         $pdf->Cell(190,5,utf8_decode("DESGLOCE DE LA INFORMACIÓN:"),1,1,'C');
         $pdf->SetXY(10,80);
         $pdf->SetFont('Arial','',7);
         $pdf->MultiCell(190,5,utf8_decode($actividad->comentario),1);  




         $headers=['Content-Type'=>'application/pdf'];
         return Response($pdf->Output(), 200, $headers);
        





    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Actividades  $actividades
     * @return \Illuminate\Http\Response
     */
    public function edit($id )
    {
        
        $actividad = Actividades::find(\Hashids::decode($id)[0]);
        $notificaciones = Notificaciones::count();
        $descripNot = Notificaciones::get();
        $roles = Role::get();
        return view ('admin.actividades.edit', compact('actividad','notificaciones','descripNot','roles'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Actividades  $actividades
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $iglesias = Actividades::findOrFail(\Hashids::decode($id)[0]);
        $iglesias->update($request->all());
         $notification = array(
          'message' => '¡Registro guardado!',
          'alert-type' => 'success'
      );
       return \Redirect::to('/')->with($notification);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Actividades  $actividades
     * @return \Illuminate\Http\Response
     */
    public function destroy(Actividades $actividades)
    {
        //
    }
}
