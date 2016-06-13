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
                    <li><a href="{{ url('/cli/noticia') }}">Noticias</a></li>
                    
                    </ol>

                </div>

                <div class="panel-body">


                
<div class="table-responsive">

    <h1>Noticias <a href="{{ url('cli/noticia/create') }}" class="btn btn-primary pull-right btn-sm">Añadir Nueva Noticia</a></h1>
    <div class="table">
        <table class="table table-bordered table-striped table-hover">
            <thead>
                <tr>
                    <th>S.No</th><th>Docente</th><th>Materia</th><th>Titulo</th><th>Acciones</th>
                </tr>
            </thead>
            <tbody>
            {{-- */$x=0;/* --}}
            @foreach($noticia as $item)
                {{-- */$x++;/* --}}
                <tr>
                    <td>{{ $x }}</td>
                    <td>{{ $item->docente }}</td><td>{{ $item->materia }}</td><td>{{ $item->titulo }}</td>
                    <td>
                        <a href="{{ url('cli/noticia/' . $item->id . '/edit') }}">
                            <button type="submit" class="btn btn-primary btn-xs">Editar</button>
                        </a> /
                        {!! Form::open([
                            'method'=>'DELETE',
                            'url' => ['cli/noticia', $item->id],
                            'style' => 'display:inline'
                        ]) !!}
                            {!! Form::submit('Eliminar', ['class' => 'btn btn-danger btn-xs']) !!}
                        {!! Form::close() !!}
                    </td>
                </tr>
            @endforeach
            </tbody>
        </table>
        <div class="pagination"> {!! $noticia->render() !!} </div>
    </div>
   
    </div>
<!-- asta aqui-->
</div>
 </div>         </div>
            </div>
        </div>
    </div>
@endsection
