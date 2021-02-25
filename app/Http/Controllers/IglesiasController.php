<?php

namespace App\Http\Controllers;

use App\Models\Iglesias;
use App\Models\Estado;
use App\Models\TipoLocal;
use App\Models\Notificaciones;
use Spatie\Permission\Models\Role;
use Illuminate\Http\Request;

class IglesiasController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
       if (auth()->user()->hasRole('Administrador')) {
        
        $iglesias = Iglesias::get();
        $roles = Role::get();
        $notificaciones = Notificaciones::count();
        $descripNot = Notificaciones::get();

        return view('admin.iglesias.index', compact('roles','iglesias','notificaciones','descripNot'));
       }
        $iglesias = Iglesias::where('users_id', auth()->user()->id)->get();
        $roles = Role::get();
        $notificaciones = Notificaciones::count();
        $descripNot = Notificaciones::get();
        return view('admin.iglesias.index', compact('roles','iglesias','notificaciones','descripNot'));

    }


     /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function documentos($id)
    {
        $iglesia = Iglesias::find($id);
        $roles = Role::get();
        return view('admin.iglesias.documentos.create', compact('roles','iglesia'));

    }


    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function guardar(Request $request)
    {
        dd($request);
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
     * @param  \App\Models\Iglesias  $iglesias
     * @return \Illuminate\Http\Response
     */
    public function show(Iglesias $iglesias)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Iglesias  $iglesias
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        
        $iglesias = Iglesias::find(\Hashids::decode($id)[0]);
        $estado = Estado::get()->pluck('nb_estado','id');
        $locales = TipoLocal::get()->pluck('nb_nombre','id');
        return view ('admin.iglesias.edit',compact('iglesias','estado','locales'));
        //dd($iglesias);

    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Iglesias  $iglesias
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        
        $iglesias = Iglesias::findOrFail(\Hashids::decode($id)[0]);
        $iglesias->update($request->all());
         $notification = array(
          'message' => '¡Registro guardado!',
          'alert-type' => 'success'
      );
       return \Redirect::to('iglesias')->with($notification);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Iglesias  $iglesias
     * @return \Illuminate\Http\Response
     */
    public function destroy(Iglesias $iglesias)
    {
        //
    }
}
