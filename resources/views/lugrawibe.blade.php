@extends('auth.auth')

@section('htmlheader_title')
    Lugrawibe
@endsection


@section('main-content')
<div class="container div_radius ">
	<div class="row">
        <div class="col-md-14 col-md-offset-0 div_radius">
            <div class="panel panel-default div_radius">
                <div class="panel-body div_radius  ">

				
					<h1 class='sombra5'>->Lugrawibe </h1>
					<div class='sombra1' style="width:70%; text-align:center; padding:none;">
					
					<p> El Sistema de Información <span class='sombra5'>web SPG</span> de 
						la  Facultad de {{ $variable7 }} 
						
						fue desarrollado por el grupo LUGRAWIBE en la
						
						 Materia Taller Ingeniria de Software 
							de la	
						Carrera de Ingenieria de Sistemas <br>
						
						<br>
						<br>

						</p>


					<div class="row ">
						 <span class='sombra5'> Docente</span>
					 <div style="text-align:center;" >
						<div class=' neonrosa div_shadow div_radius' >
							<h7  > <br>-> Msc. Lic. Erika Patricia Rodriguez Bilbao</h7> <br>
							<h7><br>Customer<br>Adviser</h7> <br>
					   	 <img src="{{asset('/img/docente.jpg')}}" class="img-circle" alt="User Image" />
					   	 <br>
					   	 <span class='sombra5' >^</span>
					   </div>
					 </div> 
					 
					</div> 
					<br>
					<br>
							<span class='sombra5' > Desarrolladores</span>
							<br>
				</div>

              
				<div>
						
					
					   <div class='wil neonrosa div_shadow div_radius' >
							<h7 > <br>-> GUZMAN ALVAREZ WILDER</h7> <br>
							<h7><br>Product Owner<br>Scrum Master<br>Developer<br>Tester</h7> <br>
					   	 <img src="{{asset('/img/w.jpeg')}}" class="img-circle" alt="User Image" />
					   	  <br>
					   	 <span class='sombra5' >^</span>
					   </div>
					   <div class='wil1 neonrosa div_shadow div_radius' >
							<h7  > <br>-> SORIA SALAZAR BERNARDA</h7> <br>
							<h7><br>Scrum Master<br>Developer<br>Tester</h7> <br>
					   	 <img src="{{asset('/img/be.jpg')}}" class="img-circle" alt="User Image" />
					   	  <br>
					   	 <span class='sombra5' >^</span>
					   </div>

						<div class='wil1 neonrosa div_shadow div_radius' >
							<h7  > <br>-> CRUZ ROMERO ISRAEL</h7> <br>
							<h7><br>Scrum Master<br>Developer<br>Tester</h7> <br>
					   	 <img src="{{asset('/img/user8-128x128.jpg')}}" class="img-circle" alt="User Image" />
					   	  <br>
					   	 <span class='sombra5' >^</span>
					   </div>
					   <div class='wil1 neonrosa div_shadow div_radius' >
							<h7 > <br>-> TINTAYA SOTO GRACIELA</h7> <br>
							<h7><br>Scrum Master<br>Developer<br>Tester</h7> <br>
					   	 <img src="{{asset('/img/gra.jpg')}}" class="img-circle" alt="User Image" />
					   	  <br>
					   	 <span class='sombra5' >^</span>
					   </div>
							
						

				</div>  
																
					   
<style type="text/css">
	

		

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
			</div>
		</div>
	</div>

@endsection
