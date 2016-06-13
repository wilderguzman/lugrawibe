@extends('app')

@section('htmlheader_title')
    Home
@endsection


@section('main-content')
<div class="container">
    <div class="row">
        <div class="col-md-10 col-md-offset-0">
            <div class="panel panel-default">
                <div class="panel-heading">

                   <ol class="breadcrumb">
                    
                    <li><a href="{{ url('admin/departamento') }}"></i>Departamentos</a></li>
                    <li><a href="{{ url('admin/departamento', $depa) }}"></i>Materias</a></li>
                    
                    </ol>

                </div>

                <div class="panel-body">


                    <!-- asta aqui-->

    <h1>Crear Nueva Materia</h1>
    <hr/>

    {!! Form::open(['url' => 'admin/materia', 'class' => 'form-horizontal']) !!}
                <div class="form-group {{ $errors->has('departamento_id') ? 'has-error' : ''}}">
                
                <div class="col-sm-6">
                    {!! Form::hidden('departamento_id',$depa, ['class' => 'form-control' , 'required' => 'required']) !!}
                    {!! $errors->first('departamento_id', '<p class="help-block">:message</p>') !!}
                </div>
            </div>

                <div class="form-group {{ $errors->has('nombre_materia') ? 'has-error' : ''}}">
                {!! Form::label('nombre_materia', 'Nombre de Materia: ', ['class' => 'col-sm-3 control-label']) !!}
                <div class="col-sm-6">
                    {!! Form::text('nombre_materia', null, ['class' => 'form-control', 'required' => 'required']) !!}
                    {!! $errors->first('nombre_materia', '<p class="help-block">:message</p>') !!}
                </div>
            </div>
            <div class="form-group {{ $errors->has('sigla_materia') ? 'has-error' : ''}}">
                {!! Form::label('sigla_materia', 'Sigla de Materia: ', ['class' => 'col-sm-3 control-label']) !!}
                <div class="col-sm-6">
                    {!! Form::text('sigla_materia', $sigla_materia, ['class' => 'form-control', 'required' => 'required','readonly' => 'true']) !!}
                    {!! $errors->first('sigla_materia', '<p class="help-block">:message</p>') !!}
                </div>
            </div>
            <div class="form-group {{ $errors->has('codigo') ? 'has-error' : ''}}">
                {!! Form::label('codigo', 'Código: ', ['class' => 'col-sm-3 control-label']) !!}
                <div class="col-sm-6">
                    {!! Form::number('codigo', $variable8, ['class' => 'form-control', 'required' => 'required','readonly' => 'true']) !!}
                    {!! $errors->first('codigo', '<p class="help-block">:message</p>') !!}
                </div>
            </div>
            <div class="form-group {{ $errors->has('fecha_creacion') ? 'has-error' : ''}}">
                {!! Form::label('fecha_creacion', 'Fecha de Creación: ', ['class' => 'col-sm-3 control-label']) !!}
                <div class="col-sm-6">
                    {!! Form::date('fecha_creacion', null, ['class' => 'form-control']) !!}
                    {!! $errors->first('fecha_creacion', '<p class="help-block">:message</p>') !!}
                </div>
            </div>


    <div class="form-group">
        <div class="col-sm-offset-3 col-sm-3">
            {!! Form::submit('Crear', ['class' => 'btn btn-primary form-control']) !!}
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
        </div>
    </div>
</div>

@endsection