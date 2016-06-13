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
                    <li><a href="{ url('/cli/informacion') }}">Guia-Informaciones</a></li>
                    
                    </ol>

                </div>

                <div class="panel-body">


                
<div class="table-responsive">
    <h1>Informacion</h1>
    <div class="table-responsive">
        <table class="table table-bordered table-striped table-hover">
            <thead>
                <tr>
                    <th>ID.</th> <th>Nombre</th><th>Cargo</th><th>Telefono Fijo</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>{{ $informacion->id }}</td> <td> {{ $informacion->nombre }} </td><td> {{ $informacion->cargo }} </td><td> {{ $informacion->telefono_fijo }} </td>
                </tr>
            </tbody>    
        </table>
    </div>
<!-- asta aqui-->
</div>
 </div>         </div>
            </div>
        </div>
    </div>

@endsection