<?php

namespace App\Http\Controllers\Cli;

use App\Http\Requests;
use App\Http\Controllers\Controller;

use App\Noticium;
use Illuminate\Http\Request;
use Carbon\Carbon;
use App\Materium;
use Session;


class NoticiaController extends Controller
{

    /**
     * Display a listing of the resource.
     *
     * @return Response
     */
    public function index()
    {
        $noticia = Noticium::paginate(15);

        return view('cli.noticia.index', compact('noticia'));
    }

    public function indexn()
    {  
        $datea = Carbon::now();
         //$datea->format('Y-m-d');
        //$datea->toDateString();

        $noticia = Noticium::where("fecha_final",">",$datea)->get();


    

        return view('cli.noticia.indexn', compact('noticia'));
    }


    /**
     * Show the form for creating a new resource.
     *
     * @return Response
     */
    public function create()
    {
        $daten = Carbon::now();
         $daten->format('Y-m-d');
         $materias=Materium::orderBy('nombre_materia', 'asc')->lists('nombre_materia', 'nombre_materia');
        return view('cli.noticia.create',compact('daten','materias'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @return Response
     */
    public function store(Request $request)
    {
        $this->validate($request, ['titulo' => 'required', 'contenido' => 'required', ]);

        Noticium::create($request->all());

        Session::flash('flash_message', 'Noticium added!');

        return redirect('cli/noticia');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     *
     * @return Response
     */
    public function show($id)
    {
        $noticium = Noticium::findOrFail($id);

        return view('cli.noticia.show', compact('noticium'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     *
     * @return Response
     */
    public function edit($id)
    {
        $noticium = Noticium::findOrFail($id);
        $materias=Materium::orderBy('nombre_materia', 'asc')->lists('nombre_materia', 'nombre_materia');

        return view('cli.noticia.edit', compact('noticium','materias'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  int  $id
     *
     * @return Response
     */
    public function update($id, Request $request)
    {
        $this->validate($request, ['titulo' => 'required', 'contenido' => 'required', ]);

        $noticium = Noticium::findOrFail($id);
        $noticium->update($request->all());

        Session::flash('flash_message', 'Noticium updated!');

        return redirect('cli/noticia');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     *
     * @return Response
     */
    public function destroy($id)
    {
        Noticium::destroy($id);

        Session::flash('flash_message', 'Noticium deleted!');

        return redirect('cli/noticia');
    }

}
