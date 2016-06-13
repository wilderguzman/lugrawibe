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


    <h1 class='sombra5'> ->Materia </h1>
    <div class="table">
        <table class="table table-bordered table-striped table-hover">
            <thead>
                <tr>
                    <th>Nombre De La Materia</th><th>Sigla De La Materia</th><th>Código</th><th>Acciones</th>
                </tr>
            </thead>
            <tbody>
            
            @foreach($materia as $item)
                
                <tr>
                    
                    <td>{{ $item->nombre_materia }}</td><td>{{ $item->sigla_materia }}</td><td>{{ $item->codigo }}</td>
                    <td>
                        
                        <a href="{{ url('admin/materia/' . $item->id . '/printplanglobalm') }}" target="_blank">
                            <button type="submit" class="btn btn-info btn-xs">Ver Plan global </button>
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
@endsection
