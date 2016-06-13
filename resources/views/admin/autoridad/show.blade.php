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
                    <li><a href="{{ url('/home') }}"><i class="fa fa-dashboard"></i>Autoridad</a></li>
                    <li><a href="{{ url('admin/departamento') }}"></i>Departamentos</a></li>
                    <li><a href="{{ url('admin/departamento') }}"></i>Lista De Departamentos</a></li>
                    </ol>

                </div>

                <div class="panel-body">


                
<div class="table-responsive">

    <!-- asta aqui-->
    

    <h1>Autoridad</h1>
    <div class="table-responsive">
        <table class="table table-bordered table-striped table-hover">
            <thead>
                <tr>
                    <th>ID.</th> <th>Nombre</th><th>Código</th><th>Cargo</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>{{ $autoridad->id }}</td> <td> {{ $autoridad->nombre }} </td><td> {{ $autoridad->codigo }} </td><td> {{ $autoridad->cargo }} </td>
                </tr>
            </tbody>    
        </table>
    </div>
<!-- asta aqui-->

            </div>
        </div>
    </div>
</div>
</div>
</div>

<!-- asta aqui-->
@endsection