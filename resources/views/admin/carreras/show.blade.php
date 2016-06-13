@extends('app')

@section('htmlheader_title')
    Home
@endsection


@section('main-content')
<div class="container">
    <div class="row">
        <div class="col-md-11 col-md-offset-0">
            <div class="panel panel-default">
                <div class="panel-heading">

                   <ol class="breadcrumb">
                    <li><a href="{{ url('/admin/carreras') }}"><i class="fa fa-dashboard"></i> Carreras</a></li>
                    <li><a href="#"></i> Materias</a></li>
                    <!--li><a href="{{ url('admin/departamento') }}"></i>Lista De Departamentos</a></li-->
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




 <h1>Materia <a href="{{ url('cli/carreras/'.$carrera->id.'/edit') }}" class="btn btn-primary pull-right btn-sm">Asignar Materias</a></h1>
    <div class="table">
        <table class="table table-bordered table-striped table-hover">
            <thead>
                <tr>
                    <th>Nombre Materia</th><th>Sigla Materia</th><th>Codigo</th>
                </tr>
            </thead>
            <tbody>
            
            @foreach($carrera->materias as $item)
               
                <tr>
                    
                    <td>{{ $item->nombre_materia }}</td><td>{{ $item->sigla_materia }}</td><td>{{ $item->codigo }}</td>
                    
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