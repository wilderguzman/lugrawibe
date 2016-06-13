<?php

namespace App\Http\Controllers\Admin;

use App\Http\Requests;
use App\Http\Controllers\Controller;

use App\PlanGlobal;
use App\materium;
use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\View;

use App\JustificaionGeneral;
use App\Unidade;
use App\PropositosGenerale;
use App\ObjetivosGenerale;
use App\Evaluacion;
use App\Grupo;
use App\Docente;

use Illuminate\Http\Request;
use Carbon\Carbon;
use Session;

class PlanGlobalController extends Controller
{

    /**
     * Display a listing of the resource.
     *
     * @return Response
     */
      public function __construct(){
        parent::__construct();
        
    }
    
    public function index()
    {
        $planglobal = PlanGlobal::paginate(15);

        return view('admin.planglobal.index', compact('planglobal'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return Response
     */
    public function create()
    {
        return view('admin.planglobal.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @return Response
     */
    public function store(Request $request)
    {
        $this->validate($request, ['materium_id' => 'required','nombre_plan_global', 'sigla_plan_global' , 'codigo', ]);

        $PlanGlobal=PlanGlobal::create($request->all());



         $materia = Materium::findOrFail($request->input('materium_id'));

        $todosPLan=$materia->planglobal;


        if($request->input('estado')==1) {

          foreach ($todosPLan as $iten) {
              if($iten->id!=$PlanGlobal->id){

              $iten->estado=0;
              $iten->save();
          }
          }
        }



        Session::flash('flash_message', 'PlanGlobal added!');

      // $materium = $PlanGlobal->materium;

        //return view('admin.materia.show', compact('materium'));
            
   return redirect('admin/planglobal/' . $PlanGlobal->id . '/createjustificaiongeneral');

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
        $planglobal = PlanGlobal::findOrFail($id);

        return view('admin.planglobal.show', compact('planglobal'));
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
        $planglobal = PlanGlobal::findOrFail($id);
        $materia=$planglobal->materium;
        
         $JustificaionGeneral = JustificaionGeneral::where("plan_global_id","=",$id)->first();
         
         if(empty($JustificaionGeneral)){

            $JustificaionGeneral= new JustificaionGeneral;
            $JustificaionGeneral->plan_global_id=$id;
            $JustificaionGeneral->save();
         }


         $PropositosGenerale = PropositosGenerale::where("plan_global_id","=",$id)->first();
         
         if(empty($PropositosGenerale)){

            $PropositosGenerale= new PropositosGenerale;
            $PropositosGenerale->plan_global_id=$id;
            $PropositosGenerale->save();
         }

        $ObjetivosGenerale= ObjetivosGenerale::where("plan_global_id","=",$id)->first();
         
         if(empty($ObjetivosGenerale)){

            $ObjetivosGenerale= new ObjetivosGenerale;
            $ObjetivosGenerale->plan_global_id=$id;
            $ObjetivosGenerale->save();
         }


         $Unidade = Unidade::where("plan_global_id","=",$id)->first();
         
         if(empty($Unidade)){

            $Unidade= new Unidade;
            $Unidade->plan_global_id=$id;
            $Unidade->save();
         }



         $Evaluacion = Evaluacion::where("plan_global_id","=",$id)->first();
         
         if(empty($Evaluacion)){

            $Evaluacion= new Evaluacion;
            $Evaluacion->plan_global_id=$id;
            $Evaluacion->save();
         }

        return view('admin.planglobal.edit', compact('planglobal','materia'));
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
        $this->validate($request, ['nombre_plan_global' => 'required', 'sigla_plan_global' => 'required', 'codigo' => 'required', ]);

        $planglobal = PlanGlobal::findOrFail($id);
        $planglobal->update($request->all());





         $materia = Materium::findOrFail($planglobal->materium_id);

        $todosPLan=$materia->planglobal;


        if($request->input('estado')==1) {

          foreach ($todosPLan as $iten) {
              if($iten->id!=$id){

              $iten->estado=0;
              $iten->save();
          }
          }
        }

        Session::flash('flash_message', 'PlanGlobal updated!');
       
        $JustificaionGeneral = JustificaionGeneral::where("plan_global_id","=",$id)->first();
         
         $JustificaionGeneral=$JustificaionGeneral->id;
     
       
        return redirect('admin/justificaiongeneral/' .$JustificaionGeneral. '/edit');
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
        $PlanGlobal= PlanGlobal::findOrFail($id);
           PlanGlobal::destroy($id);

        Session::flash('flash_message', 'PlanGlobal deleted!');

        $materium = $PlanGlobal->materium;

        return view('admin.materia.show', compact('materium'));
    }



        public function createplanglobal( $mate )
    {
        $materia = Materium::findOrFail($mate);
        
        $date = Carbon::now();

        


        return view('admin.planglobal.create', compact('mate','materia','date'));
    }

   public function showplanglobal ( $mate ){

        $planglobal = PlanGlobal::findOrFail($mate);

        return view('admin.planglobal.show', compact('planglobal'));

   }
    public function printplanglobalm($id) {
    
        $PlanGlobal=PlanGlobal::where("materium_id","=",$id)
        ->where("estado","=",1)->first();
        if (empty($PlanGlobal)) {
            $materiau=Materium::findOrFail($id);
            $PlanGlobal= new PlanGlobal;
            $PlanGlobal->materium_id=$id;
            $PlanGlobal->nombre_plan_global=$materiau->nombre_materia;
            $PlanGlobal->sigla_plan_global=$materiau->sigla_materia;
            $PlanGlobal->estado=1;
             $PlanGlobal->save();
           $this->edit($PlanGlobal->id);
           
       }
        return $this->printplanglobal($PlanGlobal->id);
       
    }

   public function printplanglobal($id) {

             
        $this->edit($id);

       //$materium = Materium::findOrFail($id);
      //   $pdf = \PDF::loadView('admin.planglobal.print', array('data' => $data) )
       //         ->setOrientation('portrait')->setPaper('a4');
       // return $pdf->stream('PlanGlobal.pdf');


        $planglobal = PlanGlobal::findOrFail($id);
       
        

        $grupo=Grupo::where("materium_id","=",$planglobal->materium_id)
        ->where("control_de_plan_global","=",1)->first();

        if(empty($grupo)){
            $docentep=Docente::where("nombre","=","por designar")->first();
            $grupo= new Grupo;
            $grupo->materium_id=$planglobal->materium_id;
            $grupo->docente_id=$docentep->id;
            $grupo->control_de_plan_global=1;
            $grupo->save();
            $grupo=Grupo::findOrFail($grupo->id);
         }

        $docente=Docente::where("id","=",$grupo->docente_id)->first();

         
        $justificaiongeneral = JustificaionGeneral::where("plan_global_id","=",$id)->first();
         $propositosgenerale = PropositosGenerale::where("plan_global_id","=",$id)->first();
         $objetivosgenerale= ObjetivosGenerale::where("plan_global_id","=",$id)->first();
         $evaluacion = Evaluacion::where("plan_global_id","=",$id)->first();
         $unidades=$planglobal->unidade;

        $view= view('admin.planglobal.print',
         compact('planglobal',
            'docente',
            'justificaiongeneral',
            'propositosgenerale',
            'objetivosgenerale',
            'unidades',
            'evaluacion'));

        $pdf = App::make('dompdf.wrapper');
        $pdf->loadHTML($view);
        return $pdf->stream('PlanGlobal.pdf');
    }

}
