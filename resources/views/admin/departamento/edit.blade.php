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
                    
                    <li><a href="{{ url('admin/departamento') }}"></i>Departamentos</a></li>
                    <li><a href="#"></i>Editar Departamento</a></li>
                    </ol>

                </div>

                <div class="panel-body">


                    <!-- asta aqui-->

    <h1 >Editar Departamento</h1>
    <hr/>

    {!! Form::model($departamento, [
        'method' => 'PATCH',
        'url' => ['admin/departamento', $departamento->id],
        'class' => 'form-horizontal'
    ]) !!}

                <div class="form-group {{ $errors->has('nombre_departamento') ? 'has-error' : ''}}">
                {!! Form::label('nombre_departamento', 'Nombre Departamento: ', ['class' => 'col-sm-3 control-label']) !!}
                <div class="col-sm-6">
                    {!! Form::text('nombre_departamento', null, ['class' => 'form-control', 'required' => 'required']) !!}
                    {!! $errors->first('nombre_departamento', '<p class="help-block">:message</p>') !!}
                </div>
            </div>
            <div class="form-group {{ $errors->has('descripcion') ? 'has-error' : ''}}">
                {!! Form::label('descripcion', 'Descripción: ', ['class' => 'col-sm-3 control-label']) !!}
                <div class="col-sm-6">
                    {!! Form::textarea('descripcion', null, ['class' => 'form-control']) !!}
                    {!! $errors->first('descripcion', '<p class="help-block">:message</p>') !!}
                </div>
            </div>
            <div class="form-group {{ $errors->has('fecha_creacion') ? 'has-error' : ''}}">
                {!! Form::label('fecha_creacion', 'Fecha Creación: ', ['class' => 'col-sm-3 control-label']) !!}
                <div class="col-sm-6">
                    {!! Form::date('fecha_creacion', null, ['class' => 'form-control','readonly' => 'true']) !!}
                    {!! $errors->first('fecha_creacion', '<p class="help-block">:message</p>') !!}
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
        </div>
    </div>
</div>

@endsection