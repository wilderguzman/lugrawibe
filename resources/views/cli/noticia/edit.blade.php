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

    <h1>Editar Noticia</h1>
    <hr/>

    {!! Form::model($noticium, [
        'method' => 'PATCH',
        'url' => ['cli/noticia', $noticium->id],
        'class' => 'form-horizontal'
    ]) !!}

                <div class="form-group {{ $errors->has('docente') ? 'has-error' : ''}}">
                {!! Form::label('docente', 'Docente: ', ['class' => 'col-sm-3 control-label']) !!}
                <div class="col-sm-6">
                    {!! Form::text('docente', null, ['class' => 'form-control','readonly' => 'true']) !!}
                    {!! $errors->first('docente', '<p class="help-block">:message</p>') !!}
                </div>
            </div>
            <div class="form-group {{ $errors->has('materia') ? 'has-error' : ''}}">
                {!! Form::label('materia', 'Materia: ', ['class' => 'col-sm-3 control-label']) !!}
                <div class="col-sm-6">
                    {!! Form::select('materia',$materias, ['class' => 'form-control']) !!}
                    {!! $errors->first('materia', '<p class="help-block">:message</p>') !!}
                </div>
            </div>
            <div class="form-group {{ $errors->has('titulo') ? 'has-error' : ''}}">
                {!! Form::label('titulo', 'Titulo: ', ['class' => 'col-sm-3 control-label']) !!}
                <div class="col-sm-6">
                    {!! Form::text('titulo', null, ['class' => 'form-control', 'required' => 'required','maxlength'=>100]) !!}
                    {!! $errors->first('titulo', '<p class="help-block">:message</p>') !!}
                </div>
            </div>
            <div class="form-group {{ $errors->has('contenido') ? 'has-error' : ''}}">
                {!! Form::label('contenido', 'Contenido: ', ['class' => 'col-sm-3 control-label']) !!}
                <div class="col-sm-6">
                    {!! Form::textarea('contenido', null, ['class' => 'form-control', 'required' => 'required']) !!}
                    {!! $errors->first('contenido', '<p class="help-block">:message</p>') !!}
                </div>
            </div>
            <div class="form-group {{ $errors->has('fecha_inicio') ? 'has-error' : ''}}">
                {!! Form::label('fecha_inicio', 'Fecha Inicio: ', ['class' => 'col-sm-3 control-label']) !!}
                <div class="col-sm-6">
                    {!! Form::date('fecha_inicio', null, ['class' => 'form-control','readonly' => 'true']) !!}
                    {!! $errors->first('fecha_inicio', '<p class="help-block">:message</p>') !!}
                </div>
            </div>
            <div class="form-group {{ $errors->has('fecha_final') ? 'has-error' : ''}}">
                {!! Form::label('fecha_final', 'Fecha Final: ', ['class' => 'col-sm-3 control-label']) !!}
                <div class="col-sm-6">
                    {!! Form::date('fecha_final', null, ['class' => 'form-control']) !!}
                    {!! $errors->first('fecha_final', '<p class="help-block">:message</p>') !!}
                </div>
            </div>


    <div class="form-group">
        <div class="col-sm-offset-3 col-sm-3">
            {!! Form::submit('Guardar', ['class' => 'btn btn-primary form-control']) !!}
        </div>
    </div>
    {!! Form::close() !!}

    @if ($errors->any())
        <ul class="alert alert-danger">
            @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
            @endforeach
        </ul>
    @endif
   
    </div>
<!-- asta aqui-->
</div>
 </div>         </div>
            </div>
        </div>
    </div>
@endsection