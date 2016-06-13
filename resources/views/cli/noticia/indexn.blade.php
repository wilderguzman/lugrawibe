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

                


    <h1 class='sombra5' >->Noticias</h1>
   
        
            
            
            {{-- */$x=0;/* --}}
            @foreach($noticia as $item)
                {{-- */$x++;/* --}}
                
            @endforeach
        
        <div class="col-md-3 col-sm-6 col-xs-12">
          <div class="info-box">
            <span class="info-box-icon bg-yellow"><i class="fa fa-files-o"></i></span>

            <div class="info-box-content">
              <span class="info-box-text">Noticias</span>
              <span class="info-box-number">{{ $x }}</span>
            </div>
            <!-- /.info-box-content -->
          </div>
          <!-- /.info-box -->
        </div>


        <div class="col-md-6">
          <div class="box box-solid">
            <div class="box-header with-border">
              <h3 class="box-titl sombra1">Facultad {{ $variable7 }}  Comunicados </h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators">
                  
                  {{-- */$x=0;/* --}}
                    @foreach($noticia as $item)
                        
                        @if($x==0)
                        <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                        @endif
                        @if($x!=0)
                        <li data-target="#carousel-example-generic" data-slide-to="{{ $x }}" class=""></li>
                        @endif
                        {{-- */$x++;/* --}}
                    @endforeach
                  
                </ol>
                <div class="carousel-inner ">
           
                {{-- */$x=0;/* --}}
                {{-- */$y=0;/* --}}
              @foreach($noticia as $item)
                {{-- */$x++;/* --}}
                {{-- */$y++;/* --}}
                @if($x==1)
                  <div class="item active" >
                    
                    <a href="{{ url('cli/noticia', $item->id) }}"><img src="{{asset('/img/'.$x.'.gif')}}" alt="First slide"></a>
                   
                    <div class="carousel-caption " >
                    
                    <span class="pull-left" >Docente:{{ $item->docente }}</span><br>
                    <span class="pull-left">Materia: {{ $item->materia }} </span><br>
                     
                     <h4 class='sombra8' >{{ $item->titulo }}</h4>
                      
                      <h5 class="info-box-text bg-yellow">{{ $item->contenido }}</h5>
                     
                      <h5 ><a  href="{{ url('cli/noticia', $item->id) }}" class="btn btn-info pull-right btn-xs">ver mas</a></h5>
                        <br>
                      <span class="pull-left" >Del {{ $item->fecha_inicio }} al {{ $item->fecha_final }} <br> </span>
                          <span class="pull-right"> <br>  {{ $y }} </span>
                      
                    </div>
                  </div>
                 @endif
                @if($x!=1)

                     <div class="item" >
                    
                    <a href="{{ url('cli/noticia', $item->id) }}"><img src="{{asset('/img/'.$x.'.gif')}}" alt="First slide"></a>
                   
                    <div class="carousel-caption " >
                    
                    <span class="pull-left" >Docente:{{ $item->docente }}</span><br>
                    <span class="pull-left">Materia: {{ $item->materia }} </span><br>
                     
                     <h4 class='sombra8' >{{ $item->titulo }}</h4>
                      
                      <h5 class="info-box-text bg-yellow">{{ $item->contenido }}</h5>
                     
                      <h5 ><a  href="{{ url('cli/noticia', $item->id) }}" class="btn btn-info pull-right btn-xs">ver mas</a></h5>
                        <br>
                      <span class="pull-left" >Del {{ $item->fecha_inicio }} al {{ $item->fecha_final }} <br> </span>
                          <span class="pull-right"> <br>  {{ $y }} </span>
                      
                    </div>
                  </div>
                    @if($x==22)
                        {{-- */$x=2;/* --}}
                    @endif
                 @endif

                 @endforeach

                  
                 


                </div>
                <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                  <span class="fa fa-angle-left"></span>
                </a>
                <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                  <span class="fa fa-angle-right"></span>
                </a>
              </div>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
        </div>

<style type="text/css">
  
  .negro{

      font-size: 20px; 
      letter-spacing:-2px; 
      color: #000000; 
      text-shadow: 0px -3px 7px #333333; 

     }

     .sombra8 {
                              text-shadow: 0 1px 0 #ccc, 
                              0 2px 0 #c9c9c9,
                              0 3px 0 #bbb,
                              
                              0 6px 1px rgba(0,0,0,.1),
                              0 0 5px rgba(0,0,0,.1),
                              0 1px 3px rgba(0,0,0,.3),
                              0 3px 5px rgba(0,0,0,.2),
                              
                              color: #fff;
                              font-size: 20px;
                              font-family: Impact;
                              }

  .wil{
    float:left;
    margin-top:10px;
    margin-right:10px ; 
    margin-bottom:10px; 
    margin-left:50px;
        }
        .wil1{
    float:left;
    margin-top:27px;
    margin-right:10px ; 
    margin-bottom:10px; 
    margin-left:30px;
        }
    .neonrosam{ 
      font-size: 50px; 
      letter-spacing:-2px; 
      color: #fff; 
      text-shadow: 0 0 5px #fff, 0 0 10px #fff, 0 0 15px #fff, 0 0 20px #ff00de, 0 0 25px #ff00de; 
      -webkit-text-fill-color: #F4ECFF; 
      -webkit-text-stroke-color:#C546F7; 
      -webkit-text-stroke-width:0.2px; 
      -moz-text-fill-color: #F4ECFF; 
      -moz-text-stroke-color:#C546F7; 
      -moz-text-stroke-width:0.2px; 

      }

      
      .div_radius
{ 
border-radius: 33px 39px 53px 0px; 
-webkit-border-radius: 33px 39px 53px 0px; 
-moz-border-radius: 33px 39px 53px 0px; 
}

.div_shadow
{ 
box-shadow: -10px 13px 14px #333333; 
-webkit-box-shadow: -10px 13px 14px #333333;
-moz-box-shadow: -10px 13px 14px #333333; 
}

    .neonrosa{
    font-family: Arial;
    text-align: center;
      text-shadow: 0 1px 0 #ccc, 
               0 2px 0 #c9c9c9,
               0 3px 0 #bbb,
               0 4px 0 #b9b9b9,
               0 5px 0 #aaa,
               0 6px 1px rgba(0,0,0,.1),
               0 0 5px rgba(0,0,0,.1),
               0 1px 3px rgba(0,0,0,.3),
               0 3px 5px rgba(0,0,0,.2),
               0 5px 10px rgba(0,0,0,.25),
               0 10px 10px rgba(0,0,0,.2),
               0 20px 20px rgba(0,0,0,.15);
      }
</style>



    </div>
<!-- asta aqui-->
</div>
 </div>         </div>
            </div>
        </div>
    </div>
@endsection
