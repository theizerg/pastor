<?php

namespace App\Http\Controllers;
use App\Models\Pastor;
use App\Models\Iglesias;
use App\Models\Notificaciones;
use Carbon\Carbon;
use DB;
use Illuminate\Http\Request;
use App\Models\User; 
use Spatie\Permission\Models\Role;
class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show  the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

        $pastor = \Auth::user()->display_name;


        if (\Auth::user()->hasRole('Administrador')) {
         $roles = Role::get();
         
         //get Current date and time
         $date_current = Carbon::now()->toDateTimeString();




        $t_pastor = Pastor::all()
        ->where('status',1)
        ->count();
        $t_colaborador = DB::table('pastor')->where('grado_ministerial_id', '1')
        ->where('status',1)
        ->count();
        $t_laico = DB::table('pastor')->where('grado_ministerial_id', '2')
        ->where('status',1)
        ->count();
        $t_licenciado = DB::table('pastor')->where('grado_ministerial_id', '3')
        ->where('status',1)
        ->count();
        $t_ministro_ordenado =DB::table('pastor')->where('grado_ministerial_id', '4')
        ->where('status',1)
        ->count();
        $notificaciones = Notificaciones::count();
        $descripNot = Notificaciones::get();
        $iglesias= Iglesias::count();
        $usuarios=User::all();
        $localA = DB::table('iglesias')
                             ->where('tipo_local_id', '1')
                             
                             ->count();
        $localP = DB::table('iglesias')
                             ->where('tipo_local_id', '2')
                             
                             ->count();


       
     
        return view('admin.home.index')
            ->with([
                't_pastor'        =>  $t_pastor,
                
                't_colaborador'   =>  $t_colaborador,
                't_licenciado'    =>  $t_licenciado,
                't_laico'         =>  $t_laico,
                't_ministro_ordenado'   =>  $t_ministro_ordenado,
                'usuarios'              =>  $usuarios,
                'roles'                 => $roles,
                'localA'                =>$localA,
                'localP'                => $localP,
                'iglesias'              =>$iglesias,
                'notificaciones'        =>$notificaciones,
                'descripNot'            =>$descripNot

            ]);
        }
        //get Current date and time
        $date_current = Carbon::now()->toDateTimeString();
        //get date and time of previous month
        /**
         *  subMonths() means it will subtract the month with
         *  the given argument.
         */
        $prev_date1 = $this->getPrevDate(1);
        $prev_date2 = $this->getPrevDate(2);
        $prev_date3 = $this->getPrevDate(3);
        $prev_date4 = $this->getPrevDate(4);

        $emp_count_1 = Pastor::whereBetween('created_at',[$prev_date1,$date_current])->count();
        $emp_count_2 = Pastor::whereBetween('created_at',[$prev_date2,$prev_date1])->count();
        $emp_count_3 = Pastor::whereBetween('created_at',[$prev_date3,$prev_date2])->count();
        $emp_count_4 = Pastor::whereBetween('created_at',[$prev_date4,$prev_date3])->count();

        

        $idPastor = \Auth::user()->id;
        $t_pastor = Pastor::where('users_id', $idPastor)
        ->where('status',1)
        ->count();
        $roles = Role::get();
        $usuarios=User::all();

        $t_colaborador = DB::table('pastor')
                             ->where('grado_ministerial_id', '1')
                             ->where('users_id', $idPastor)
                             ->where('status',1)
                             ->count();

        $iglesias= DB::table('iglesias')
                             //->where('grado_ministerial_id', '1')
                             ->where('users_id', $idPastor)
                             //->where('status',1)
                             ->count();

          //dd( $iglesias);


        $t_laico = DB::table('pastor')
                             ->where('grado_ministerial_id', '2')
                             ->where('users_id', $idPastor)
                             ->where('status',1)
                             ->count();

        $t_licenciado = DB::table('pastor')
                             ->where('grado_ministerial_id', '3')
                             ->where('users_id', $idPastor)
                             ->where('status',1)
                             ->count();

        $t_ministro_ordenado = DB::table('pastor')
                             ->where('grado_ministerial_id', '4')
                             ->where('users_id', $idPastor)
                             ->where('status',1)
                             ->count();

        $localA = DB::table('iglesias')
                             ->where('tipo_local_id', '1')
                             ->where('users_id', $idPastor)
                             //->where('status',1)                             
                             ->count();

        $localP = DB::table('iglesias')
                             ->where('tipo_local_id', '2')
                             ->where('users_id', $idPastor)
                             //->where('status',1)                             
                             ->count();


        //dd($localP);

        $usuarios=User::all()->count();
     
         return view('admin.home.index')
            ->with([
                't_pastor'        =>  $t_pastor,
                
                't_colaborador'   =>  $t_colaborador,
                't_licenciado'    =>  $t_licenciado,
                't_laico'         =>  $t_laico,
                't_ministro_ordenado'   =>  $t_ministro_ordenado,
                'usuarios'              =>  $usuarios,
                'roles'                 => $roles,
                'localA'                =>$localA,
                'localP'                => $localP,
                'iglesias'              =>$iglesias

            ]);

       


   
    }




    /**
     *  get the sub month of the given integer
     */
    private function getPrevDate($num){
        return Carbon::now()->subMonths($num)->toDateTimeString();
    }

 public function borrarNotificacion(Request $request, $notificacion_id){
        if($request->ajax()){            
            $notificacion = Notificaciones::find($notificacion_id);
            $usuario = \Auth::user();
            if($notificacion != null && $usuario != null){
                $usuario->notificaciones()->detach($notificacion);
                $usuario->save();
                //Notificaciones::cargarNotificaciones();

                if($notificacion->usuarios()->count() == 0){
                    $notificacion->delete();
                }               
            }
            $notificaciones_total = $usuario->notificaciones()->count();

            return Response()->json([
                'total' => $notificaciones_total,
                'mensaje' => 'Notiicación borrada'
            ]);
        }   
    }
}
