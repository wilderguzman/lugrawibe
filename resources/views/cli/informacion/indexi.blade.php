@extends('auth.auth')

@section('htmlheader_title')
    Home
@endsection

@section('main-content')
<div class="container">
    <div class="row">
        <div class="col-md-14 col-md-offset-0">
            <div class="panel panel-default">
                <div class="panel-body">
               


                
<div class="table-responsive">

    <h1 class='sombra5' > ->Personal de informaciones</h1>
    <div class="table">
        <table class="table table-bordered table-striped table-hover">
            <thead>
                <tr>
                    <th>Nombre</th>
                    <th>Cargo</th>
                    <th>Telefono Fijo</th>
                    <th>Numero de Celular</th>
                    <th>Email</th>
                </tr>
            </thead>
            <tbody>
            
            @foreach($informacion as $item)
                
                <tr>
                    
                    <td>{{ $item->nombre }}</td>
                    <td>{{ $item->cargo }}</td>
                    <td>{{ $item->telefono_fijo }}</td>
                    <td>{{ $item->telefono_celular }}</td>
                    <td>{{ $item->email }}</td>
                    
                </tr>
            @endforeach
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
