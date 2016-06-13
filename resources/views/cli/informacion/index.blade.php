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
                    <li><a href="{{ url('/cli/informacion') }}">Informaciones</a></li>
                    
                    </ol>

                </div>

                <div class="panel-body">


                
<div class="table-responsive">

    <h1>Personal de informaciones<a href="{{ url('cli/informacion/create') }}" class="btn btn-primary pull-right btn-sm">Añadir Personal de informaciones</a></h1>
    <div class="table">
        <table class="table table-bordered table-striped table-hover">
            <thead>
                <tr>
                    <th>S.No</th><th>Nombre</th><th>Cargo</th><th>Telefono Fijo</th><th>Acciones</th>
                </tr>
            </thead>
            <tbody>
            {{-- */$x=0;/* --}}
            @foreach($informacion as $item)
                {{-- */$x++;/* --}}
                <tr>
                    <td>{{ $x }}</td>
                    <td><a href="{{ url('cli/informacion', $item->id) }}">{{ $item->nombre }}</a></td><td>{{ $item->cargo }}</td><td>{{ $item->telefono_fijo }}</td>
                    <td>
                        <a href="{{ url('cli/informacion/' . $item->id . '/edit') }}">
                            <button type="submit" class="btn btn-primary btn-xs">Editar</button>
                        </a> /
                        {!! Form::open([
                            'method'=>'DELETE',
                            'url' => ['cli/informacion', $item->id],
                            'style' => 'display:inline'
                        ]) !!}
                            {!! Form::submit('Eliminar', ['class' => 'btn btn-danger btn-xs']) !!}
                        {!! Form::close() !!}
                    </td>
                </tr>
            @endforeach
            </tbody>
        </table>
        <div class="pagination"> {!! $informacion->render() !!} </div>
    </div>
<!-- asta aqui-->
</div>
 </div>         </div>
            </div>
        </div>
    </div>

@endsection
