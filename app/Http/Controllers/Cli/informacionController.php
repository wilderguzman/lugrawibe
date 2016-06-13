<?php

namespace App\Http\Controllers\Cli;

use App\Http\Requests;
use App\Http\Controllers\Controller;

use App\informacion;
use Illuminate\Http\Request;
use Carbon\Carbon;
use Session;

class informacionController extends Controller
{

    /**
     * Display a listing of the resource.
     *
     * @return Response
     */
    public function index()
    {
        $informacion = informacion::paginate(15);

        return view('cli.informacion.index', compact('informacion'));
    }

    public function indexi()
    {
        $informacion = informacion::all();

        return view('cli.informacion.indexi', compact('informacion'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return Response
     */
    public function create()
    {
        return view('cli.informacion.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @return Response
     */
    public function store(Request $request)
    {
        $this->validate($request, ['nombre' => 'required', 'cargo' => 'required', 'telefono_celular' => 'required', 'email' => 'required', ]);

        informacion::create($request->all());

        Session::flash('flash_message', 'informacion added!');

        return redirect('cli/informacion');
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
        $informacion = informacion::findOrFail($id);

        return view('cli.informacion.show', compact('informacion'));
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
        $informacion = informacion::findOrFail($id);

        return view('cli.informacion.edit', compact('informacion'));
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
        $this->validate($request, ['nombre' => 'required', 'cargo' => 'required', 'telefono_celular' => 'required', 'email' => 'required', ]);

        $informacion = informacion::findOrFail($id);
        $informacion->update($request->all());

        Session::flash('flash_message', 'informacion updated!');

        return redirect('cli/informacion');
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
        informacion::destroy($id);

        Session::flash('flash_message', 'informacion deleted!');

        return redirect('cli/informacion');
    }

}
