<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Pastor;
use App\Models\Iglesias;
class ImprimirController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
      $pastor = Pastor::find(\Hashids::decode($id)[0]);
      $iglesias = Iglesias::where('pastor_id', $pastor->id)->get();
      //dd($iglesias);
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
         if ($pastor->picture <> null) {
         $pdf->Image('images/pastores/'.$pastor->picture,165,5,35,30,'JPG');
         }
         else
         $pdf->Image('images/fondo/descarga.png',170,5,25,25,'PNG');

         $pdf->Ln(1);
         $pdf->SetXY(48,30);
         $pdf->SetFont('Arial','B',16);
         $pdf->Cell(128,5,utf8_decode("Planilla de pastores." ),0,1,'C');
   
         

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
         $pdf->Cell(190,5,utf8_decode("DATOS PERSONALES DEL PASTOR"),1,1,'C',true);
         $pdf->SetFont('Arial','B',6);
         $pdf->SetXY(10, 60);
         $pdf->Cell(40,5,utf8_decode("CEDULA:"),1,1,'L');
         $pdf->SetXY(50, 60);
         $pdf->Cell(70,5,utf8_decode("NOMBRES:"),1,1,'L');
         $pdf->SetXY(120, 60);
         $pdf->Cell(80,5,utf8_decode("APELLIDO:"),1,1,'L');

          //datos******************
         $pdf->SetFont('Arial','',7);
         $pdf->SetXY(10, 65);
         $pdf->Cell(40,5,$pastor->nu_cedula,1,1,'C');
         $pdf->SetXY(50, 65);
         $pdf->Cell(70,5,$pastor->tx_nombres,1,1,'C');
         $pdf->SetXY(120, 65);
         $pdf->Cell(80,5,utf8_decode($pastor->tx_apellidos),1,1,'C');
         
         $pdf->SetFont('Arial','B',6);
         $pdf->SetXY(10, 70);
         $pdf->Cell(40,5,utf8_decode("FECHA DE NACIMIENTO:"),1,1,'C');
         $pdf->SetXY(50, 70);
         $pdf->Cell(40,5,utf8_decode("LUGAR DE NACIMIENTO:"),1,1,'C');
         $pdf->SetXY(90, 70);
         $pdf->Cell(30,5,utf8_decode("NACIONALIDAD:"),1,1,'C');
         $pdf->SetXY(120, 70);
         $pdf->Cell(30,5,utf8_decode("GENERO:"),1,1,'C');
         $pdf->SetXY(150, 70);
         $pdf->Cell(50,5,utf8_decode("EDAD:"),1,1,'C');

         //datos ***************************************************************************
         $pdf->SetFont('Arial','',7);
         $pdf->MultiCell(40,10,$pastor->fe_nacimiento,1,'C');  

         $pdf->SetXY(50, 75);
         $pdf->MultiCell(40,10,$pastor->empPais->nb_pais,1,'C'); 

         $pdf->SetXY(90, 75);
         $pdf->MultiCell(30,10,$pastor->empNacionalidad->nb_nacionalidad,1,'C');

         $pdf->SetXY(120, 75);
         $pdf->MultiCell(30,10,$pastor->empGenero->nb_genero,1,'C'); 

         $pdf->SetXY(150, 75);
         $pdf->MultiCell(50,10,$pastor->nu_edad,1,'C');



         $pdf->SetFont('Arial','B',6);
         $pdf->SetXY(10, 85);
         $pdf->Cell(80,5,utf8_decode("CORREO:"),1,1,'C');
         $pdf->SetXY(90, 85);
         $pdf->Cell(30,5,utf8_decode("TELEFONO:"),1,1,'C');
         $pdf->SetXY(120, 85);
         $pdf->Cell(30,5,utf8_decode("GRADO DE INSTRUCCION:"),1,1,'C');
         $pdf->SetXY(150, 85);
         $pdf->Cell(50,5,utf8_decode("OCUPACIÓN:"),1,1,'C');

          //datos ***************************************************************************
         $pdf->SetFont('Arial','',7);
         $pdf->MultiCell(80,10,$pastor->tx_correo,1,'C'); 

         $pdf->SetXY(50, 90);
        //$pdf->MultiCell(40,10,$pastor->tx_direccion.", ".$pastor->empEstado->nb_estado,1,'C');  

         $pdf->SetXY(90, 90);
         $pdf->MultiCell(30,10,$pastor->nu_telefono,1,'C');  

         $pdf->SetXY(120, 90);
         $pdf->MultiCell(30,10,$pastor->empGradoInstruccion->nb_grado_instruccion,1,'C');  

         $pdf->SetXY(150, 90);
         $pdf->MultiCell(50,10,$pastor->nb_ocupacion,1,'C'); 

         $pdf->Ln(8);
         $pdf->SetFont('Arial','B',7);
         $pdf->SetXY(10, 100);
         $pdf->Cell(90,5,utf8_decode("¿POSEE HIJOS?"),1,1,'C');
         $pdf->SetXY(100, 100);
         $pdf->Cell(100,5,utf8_decode("CANTIDAD DE HIJOS"),1,1,'C');

          $pdf->Ln(1);
         $pdf->SetFont('Arial','B',6);
         $pdf->SetXY(10, 105);
         $pdf->MultiCell(90,10,$pastor->nb_hijos,1,'C');
         $pdf->SetXY(100, 105);
         if ($pastor->nb_hijos <> 'No') {
            $pdf->MultiCell(100,10,$pastor->nu_carga_familiar_hijos,1,'C');
         }
         $pdf->MultiCell(100,10,'NO TIENE HIJOS',1,'C'); 

         $pdf->SetFont('Arial','B',6);
         $pdf->SetXY(10, 115);
         $pdf->Cell(190,5,utf8_decode("DATOS ECLESIÁSTICOS DEL PASTOR"),1,1,'C',true);
       
         $pdf->SetXY(10, 120);
         $pdf->MultiCell(40,5,utf8_decode("¿BAUTISMO DEL ESPIRITU SANTO?:"),1,1,'C');
         $pdf->SetXY(50, 120);
         $pdf->MultiCell(40,5,utf8_decode("¿INSTITUTO TEOLÓGICO?:"),1,1,'C');
         $pdf->SetXY(90, 120);
         $pdf->MultiCell(40,5,utf8_decode("NOMBRE INSTITUTO TEOLÓGICO:"),1,1,'C');
         $pdf->SetXY(130, 120);
         $pdf->MultiCell(40,5,utf8_decode("TIEMPO DE ESTUDIO:"),1,1,'C');
         $pdf->SetXY(170, 120);
         $pdf->MultiCell(30,5,utf8_decode("TITULO OBTENIDO:"),1,1,'C');

         $pdf->SetFont('Arial','',7);
         $pdf->SetXY(10, 125);
         $pdf->MultiCell(40,10,$pastor->nb_bau_Espiritu_Santo,1,'C');  //datos

         $pdf->SetXY(50, 125);
         $pdf->MultiCell(40,10,$pastor->nb_ins_teologico,1,'C');  //datos

         $pdf->SetXY(90, 125);
         $pdf->MultiCell(40,10,$pastor->nb_desc_ins_teologico,1,'C');  //datos

         $pdf->SetXY(130, 125);
         $pdf->MultiCell(40,10,$pastor->nu_tiempo_ins,1,'C');  //datos

         $pdf->SetXY(170, 125);
         $pdf->MultiCell(30,10,$pastor->nb_titulo_obtenido,1,'C');  //datos

         $pdf->SetFont('Arial','B',6);
         $pdf->SetXY(10, 135);
         $pdf->Cell(80,5,utf8_decode("TIEMPO DE SERVICIO:"),1,1,'C');

         $pdf->SetFont('Arial','B',6);
         $pdf->SetXY(90, 135);
         $pdf->Cell(110,5,utf8_decode("ZONA:"),1,1,'C');
         $pdf->SetFont('Arial','',7);
         $pdf->SetXY(10, 140);
         $pdf->MultiCell(80,10,utf8_decode($pastor->fe_ingreso),1,'C');  //datos

         $pdf->SetXY(90, 140);
         $pdf->MultiCell(110,10,$pastor->nu_zona,1,'C');  //datos

         $pdf->SetFont('Arial','B',8);
         $pdf->SetXY(10, 150);
         $pdf->Cell(190,5,utf8_decode("DATOS MÉDICOS DEL PASTOR"),1,1,'C',true);
         $pdf->SetFont('Arial','B',6);
         $pdf->SetXY(10, 155);
         $pdf->Cell(40,5,utf8_decode("¿SUFRE ALGUNA ENFERMEDAD?:"),1,1,'C');

         $pdf->SetXY(50, 155);
         $pdf->Cell(40,5,utf8_decode("¿DESCRIPCIÓN DE ENFERMEDAD?:"),1,1,'C');

         $pdf->SetXY(90, 155);
         $pdf->Cell(110,5,utf8_decode("TIPO DE SANGRE:"),1,1,'C');

         $pdf->SetFont('Arial','',7);
         $pdf->SetXY(10, 160);
         $pdf->MultiCell(40,10,$pastor->nb_sufre_enfermedad,1,'C');  //datos


         $pdf->SetXY(50, 160);
         $pdf->MultiCell(40,10,$pastor->nb_descripcion_enfermedad,1,'C');  //datos


         $pdf->SetXY(90, 160);
         $pdf->MultiCell(110,10,$pastor->empTipoSangre->nb_tipo_sangre,1,'C');  //datos

         $pdf->Ln(6);
         $pdf->Ln(6);
         $pdf->SetFont('Arial','B',8);
         $pdf->Cell(190,5,utf8_decode("DATOS DE LA EXTENSIÓN ASOCIADA AL PASTOR"),1,1,'C',true);

         foreach ($iglesias as $key => $iglesia) {

         $pdf->SetFont('Arial','B',8);
         $pdf->Cell(90,6,utf8_decode("EXTENSIÓN"),1,0,'C');
         $pdf->Cell(100,6,utf8_decode("ZONA"),1,0,'C');
         $pdf->Ln(6);
         $pdf->Cell(90,6,utf8_decode($iglesia->nb_nombre) ,1,0,'C');
         $pdf->Cell(100,6,utf8_decode($iglesia->nu_zona) ,1,0,'C');


         $pdf->Ln(6);
         $pdf->SetFont('Arial','B',8);
         $pdf->Cell(190,5,utf8_decode("DIRECCIÓN DE LA EXTENSIÓN"),1,1,'C',true);
         $pdf->MultiCell(190,5,utf8_decode($iglesia->nb_urbanizacion.', '.$iglesia->estado->nb_estado.', '.' MUNICIPIO: '.$iglesia->nb_municipio.', '.' PARROQUIA: '.$iglesia->nb_parroquia.', '.' CÓDIGO POSTAL: '.$iglesia->nu_codigo_postal.', '.'LOCAL N°'.$iglesia->nu_casa.', '.'TELEFONO: '.$iglesia->nu_telefono.', '.$iglesia->nb_ciudad.' - '.'VENEZUELA'),1,'C');  //

         $pdf->Ln(6);
         

         }

        

        

        
        



         







          $headers=['Content-Type'=>'application/pdf'];
      return Response($pdf->Output(), 200, $headers);
        

    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
