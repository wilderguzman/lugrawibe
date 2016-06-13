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
                    <li><a href="{{ url('carreras') }}"></i> Carreras</a></li>
                    <li><a href="#"></i> Materias</a></li>
                   
                    </ol>

                </div>

                <div class="panel-body">


                
<div class="table-responsive">

    <!-- asta aqui-->
    

    <h1>Carrera</h1>
    <div class="table-responsive">
        <table class="table table-bordered table-striped table-hover">
            <thead>
                <tr>
                    <th>ID.</th> <th>Nombre</th><th>Codigo</th><th>Misión</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>{{ $carrera->id }}</td> <td> {{ $carrera->nombre }} </td><td> {{ $carrera->codigo }} </td><td> {{ $carrera->mision }} </td>
                </tr>
            </tbody>    
        </table>
    </div>




 
    <div class="table">
        <table class="table table-bordered table-striped table-hover">
            <thead>
                <tr>
                    <th>S.No</th><th>Nombre Materia</th><th>Sigla Materia</th><th>Codigo</th><th>Aciones</th>
                </tr>
            </thead>
            <tbody>
            {{-- */$x=0;/* --}}
            @foreach($carrera->materias as $item)
                {{-- */$x++;/* --}}
                <tr>
                    <td>{{ $x }}</td>
                    <td><a href="{{ url('cli/materia', $item->id) }}">{{ $item->nombre_materia }}</a></td><td>{{ $item->sigla_materia }}</td><td>{{ $item->codigo }}</td>
                     <td>
                        <a href="{{ url('cli/materia', $item->id) }}">
                            <button type="submit" class="btn btn-primary btn-xs">Plan Global</button>
                        </a> 

                    </td>
                    
                </tr>
               
            @endforeach
            </tbody>
        </table>
        
    </div>






    </div>
     </div>
            </div>
        </div>
    </div>
</div>

 

@endsection