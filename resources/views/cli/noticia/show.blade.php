@extends('auth.auth')

@section('htmlheader_title')
    Home
@endsection

@section('main-content')
<div class="container">
    <div class="row">
        <div class="col-md-14 col-md-offset-0">
            <div class="panel panel-default">
                <div class="panel-heading">

                   <ol class="breadcrumb">
                    <li><a href="{{ url('/noticias') }}">Todas las Noticias</a></li>
                    
                    </ol>

                </div>
                <div class="panel-body">
               


                
<div class="table-responsive">

                


    <h1 class='sombra5' >->Noticia</h1>
   

   <h2> Titulo: {{ $noticium->titulo }}  </h2>
    <div class="table-responsive">

      <h2>Docente:{{ $noticium->docente }} </h2>
      <h2>Materia:  {{ $noticium->materia }} </h2>
       
      <div style="text-align:center;" >
                                 
                     {{ $noticium->contenido }}
                     
        </div> 

    </div>
      <h4>Fecha de publicación: {{ $noticium->fecha_inicio }} <span class="pull-right"> Fin de comunicado: {{ $noticium->fecha_final }}</span> </h4>
      
    </div>
<!-- asta aqui-->
</div>
 </div>       
   </div>
    </div>
</div>
    
@endsection