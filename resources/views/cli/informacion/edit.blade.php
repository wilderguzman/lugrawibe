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
                    <li><a href="{{ url('/cli/informacion') }}">Guia-Informaciones</a></li>
                    
                    </ol>

                </div>

                <div class="panel-body">


                
<div class="table-responsive">
    <h1>Editar Personal de informaciones</h1>
    <hr/>

    {!! Form::model($informacion, [
        'method' => 'PATCH',
        'url' => ['cli/informacion', $informacion->id],
        'class' => 'form-horizontal'
    ]) !!}

                <div class="form-group {{ $errors->has('nombre') ? 'has-error' : ''}}">
                {!! Form::label('nombre', 'Nombre: ', ['class' => 'col-sm-3 control-label']) !!}
                <div class="col-sm-6">
                    {!! Form::text('nombre', null, ['class' => 'form-control', 'required' => 'required']) !!}
                    {!! $errors->first('nombre', '<p class="help-block">:message</p>') !!}
                </div>
            </div>
            <div class="form-group {{ $errors->has('cargo') ? 'has-error' : ''}}">
                {!! Form::label('cargo', 'Cargo: ', ['class' => 'col-sm-3 control-label']) !!}
                <div class="col-sm-6">
                    {!! Form::text('cargo', null, ['class' => 'form-control', 'required' => 'required']) !!}
                    {!! $errors->first('cargo', '<p class="help-block">:message</p>') !!}
                </div>
            </div>
            <div class="form-group {{ $errors->has('telefono_fijo') ? 'has-error' : ''}}">
                {!! Form::label('telefono_fijo', 'Telefono Fijo: ', ['class' => 'col-sm-3 control-label']) !!}
                <div class="col-sm-6">
                    {!! Form::number('telefono_fijo', null, ['class' => 'form-control']) !!}
                    {!! $errors->first('telefono_fijo', '<p class="help-block">:message</p>') !!}
                </div>
            </div>
            <div class="form-group {{ $errors->has('telefono_celular') ? 'has-error' : ''}}">
                {!! Form::label('telefono_celular', 'Telefono Celular: ', ['class' => 'col-sm-3 control-label']) !!}
                <div class="col-sm-6">
                    {!! Form::number('telefono_celular', null, ['class' => 'form-control', 'required' => 'required']) !!}
                    {!! $errors->first('telefono_celular', '<p class="help-block">:message</p>') !!}
                </div>
            </div>
            <div class="form-group {{ $errors->has('email') ? 'has-error' : ''}}">
                {!! Form::label('email', 'Email: ', ['class' => 'col-sm-3 control-label']) !!}
                <div class="col-sm-6">
                    {!! Form::email('email', null, ['class' => 'form-control', 'required' => 'required']) !!}
                    {!! $errors->first('email', '<p class="help-block">:message</p>') !!}
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
<!-- asta aqui-->
</div>
 </div>         </div>
            </div>
        </div>
    </div>

@endsection