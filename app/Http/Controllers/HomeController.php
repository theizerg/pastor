<?php

namespace App\Http\Controllers;
use App\Models\Pastor;
use App\Models\Iglesias;
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




        $t_pastor = Pastor::all()->count();
        $t_colaborador = DB::table('pastor')->where('grado_ministerial_id', '1')->count();
        $t_laico = DB::table('pastor')->where('grado_ministerial_id', '2')->count();
        $t_licenciado = DB::table('pastor')->where('grado_ministerial_id', '3')->count();
        $t_ministro_ordenado =DB::table('pastor')->where('grado_ministerial_id', '4')->count();
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
                'iglesias'              =>$iglesias

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

        $t_pastor = Pastor::all()->count();

        $colaborador = DB::table('pastor')
                             ->where('grado_ministerial_id', '1')
                             ->where('users_id', $idPastor)
                             ->count();

        $iglesias= DB::table('iglesias')
                             //->where('grado_ministerial_id', '1')
                             ->where('users_id', $idPastor)
                             ->count();

          dd( $iglesias);


        $laico = DB::table('pastor')
                             ->where('grado_ministerial_id', '2')
                             ->where('users_id', $idPastor)
                             ->count();

        $licenciado = DB::table('pastor')
                             ->where('grado_ministerial_id', '3')
                             ->where('users_id', $idPastor)
                             ->count();

        $ministro_ordenado = DB::table('pastor')
                             ->where('grado_ministerial_id', '4')
                             ->where('users_id', $idPastor)
                             ->count();

         $localP = DB::table('iglesias')
                             ->where('tipo_local_id', '1')
                             ->where('users_id', $idPastor)
                             ->count();

        dd($localP);

        $usuarios=User::all()->count();
     
        return view('admin.home.index')
            ->with([
                'emp_count_1'     =>  $emp_count_1,
                'emp_count_2'     =>  $emp_count_2,
                'emp_count_3'     =>  $emp_count_3,
                'emp_count_4'     =>  $emp_count_4,
                't_pastor'        =>  $t_pastor,
                'colaborador'     =>  $colaborador,
                'licenciado'    =>  $licenciado,
                'laico'         =>  $laico,
                'ministro_ordenado'   =>  $ministro_ordenado,
                'usuarios'              =>  $usuarios

            ]);

       


   
    }




    /**
     *  get the sub month of the given integer
     */
    private function getPrevDate($num){
        return Carbon::now()->subMonths($num)->toDateTimeString();
    }
}
