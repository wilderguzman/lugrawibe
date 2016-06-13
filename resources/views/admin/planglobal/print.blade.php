
<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->


<html >
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

  
    <head>
       
        <title>Plan Global</title>
    </head>
  <style type="text/css">
.margen{

border: 1px solid black;
border: 3px double #330033; 
}
  </style>
    <body class='margen' >
        <STYLE TYPE="text/css">
            .page-break {
                page-break-after: always;
            }
          .text-shadow{
                text-shadow:4px 2px 4px #C2C2C2;
                font-size:10px;
                color: #000000;
                font-family:ABeeZee;
                 margin-top: 2px;
                margin-bottom: 1px;
               margin-right: 50px;
               margin-left: 20px;
            }
                .text-shadow1{
                text-shadow:4px 2px 4px #C2C2C2;
                font-size:20px;
                color: #000000;
                font-family:ABeeZee;
                 margin-top: 2px;
                margin-bottom: 1px;
              text-align: center;
            }
            .page-break {
                page-break-after: always;
            }

            .table {
                width: 100%;
                max-width: 100%;
                margin-bottom: 20px;
            }
            .table > thead > tr > th,
            .table > tbody > tr > th,
            .table > tfoot > tr > th,
            .table > thead > tr > td,
            .table > tbody > tr > td,
            .table > tfoot > tr > td {
                padding: 8px;
                line-height: 1.42857143;
                vertical-align: top;
                border-top: 1px solid #dddddd;
            }
            .table > thead > tr > th {
                vertical-align: bottom;
                border-bottom: 2px solid #dddddd;
            }
            .table > caption + thead > tr:first-child > th,
            .table > colgroup + thead > tr:first-child > th,
            .table > thead:first-child > tr:first-child > th,
            .table > caption + thead > tr:first-child > td,
            .table > colgroup + thead > tr:first-child > td,
            .table > thead:first-child > tr:first-child > td {
                border-top: 0;
            }
            .table > tbody + tbody {
                border-top: 2px solid #dddddd;
            }
            .table .table {
                background-color: #ffffff;
            }


            .datagrid table { border-collapse: collapse; text-align: left; width: 100%; 

                } 
                .datagrid {font: normal 12px/150% Times New Roman, Times, serif; background: #fff; overflow: hidden; border: 1px solid #110F45; -webkit-border-radius: 7px; -moz-border-radius: 7px; border-radius: 7px; }
                .datagrid table td, 
                .datagrid table th { padding: 5px 3px; }
                .datagrid table tbody td { color: #110F45; border-left: 1px solid #110F45;font-size: 16px;border-bottom: 1px solid #110F45;font-weight: bold; }
                .datagrid table tbody 
                .alt td { background: #E9DCF4; color: #295E6B; }
                .datagrid table tbody td:first-child { border-left: none; }
                .datagrid table tbody tr:last-child td { border-bottom: none; }
             .ma{

                
             margin-right: 10px;
               margin-left: 10px;
             }

             .ma1{

                 margin-top: 5px;
             
             }


         </STYLE>



        <p class="text-shadow">UNIVERSIDAD MAYOR DE SAN SIMON</p>
        <p class="text-shadow">FACULTAD DE {{ $variable7 }} </p>
        <p class="text-shadow">Fecha: {{ $variablefecha }} </p>
        <p class="text-shadow1">PLAN GLOBAL </p>
    <br>
<div class="datagrid ma">
<table>
    <tbody>
        <tr class="alt" >
            <td colspan="15">I. IDENTIFIACIÓN</td>
        </tr>
        <tr >
            <td colspan="15">ASIGNATURA: {{ $planglobal->nombre_plan_global }} </td>
        </tr>
        <tr>
            <td colspan="5">SIGLA:{{ $planglobal->sigla_plan_global }}</td>
            <td colspan="5">CODIGO_SIS: {{ $planglobal->codigo }}</td>
            <td colspan="5">NIVEL (AÑO/SEMESTRE)</td>
        </tr>
        <tr>
            <td colspan="15">PRE-REQUISITOS:</td>
        </tr>
        <tr>
            <td colspan="12">AREAS DE COORDINACION</td>
            <td>DIA</td>
            <td>HORA</td>
            <td>AULA</td>
        </tr>
        <tr>
            <td colspan="6">VERTICAL</td>
            <td colspan="6">HORIZONTAL</td>
            <td>--</td>
            <td>--</td>
            <td>--</td>
        </tr>
        <tr>
            <td colspan="6" rowspan="2">---</td>
            <td colspan="6" rowspan="2">---</td>
            <td>--</td>
            <td>--</td>
            <td>--</td>
        </tr>
        <tr>
            <td>--</td>
            <td>--</td>
            <td>--</td>
        </tr>
        <tr>
            <td colspan="7">NOMBRE DEL DOCENTE </td>
            <td colspan="8">{{ $docente->nombre }}</td>
        </tr>
        <tr>
            <td colspan="15">DIRECCION:{{ $docente->direcion }}</td>
        </tr>
        <tr>
            <td colspan="6">TELEFONO:{{ $docente->telefono }}</td>
            <td colspan="9">E-MAIL:--- </td>
        </tr>
        
        
    </tbody>
</table>
</div>

<div class="datagrid ma ma1">
<table>
    <tbody>
        <tr class="alt">

            <td  > II. JUSTIFICACION GENERAL </td>
        </tr>
        <tr>
            <td style="border-bottom:0">RAZON DE SER LA ASIGNATURA </td>
        </tr>
        <tr>
            <td style="border-bottom:0" >{{ $justificaiongeneral->razon_de_ser_la_asignatura }}</td>
        <tr>
            <td style="border-bottom:0">POR QUE SE ENSEÑA Y PORQUE ESTA DENTRO DEL PLAN DE ESTUDIOS </td>
        </tr>
        <tr>
            <td style="border-bottom:0">{{ $justificaiongeneral->por_que_se_ensena_y_por_que_esta_dentro_del_plan_de_estudios }}</td>
        </tr>
        <tr>
            <td style="border-bottom:0">EN QUE MEDIDA CONTRIBUYE A LA FORMACIÓN INTEGRAL DEL PROFESIONAL</td>
        </tr>
        <tr>
            <td> {{ $justificaiongeneral->en_que_medida_contribuye_a_la_formacion_integral_del_profesional }} </td>
        </tr>
    </tbody>
</table>
</div>

<div class="datagrid ma ma1">
<table>
    <tbody>
        <tr class="alt">

            <td  > III. PROPOSITOS GENERALES </td>
        </tr>
        <tr>
            <td>{{ $propositosgenerale->propositos_generales}} </td>
        </tr>
       
    </tbody>
</table>
</div>

<div class="datagrid ma ma1 ">
<table>
    <tbody>
        <tr class="alt">

            <td  > IV. OBJETIVOS GENERALES </td>
        </tr>
        <tr>
            <td>{{  $objetivosgenerale->objetivos_generales}}</td>
        </tr>
       
    </tbody>
</table>
</div>

<div class="datagrid ma ma1 page-break">
<table>
    <tbody>
        <tr class="alt">

            <td  > V. ESTRUCTURACION DE LAS UNIDADES DIDACTICAS </td>
        </tr>
        
    </tbody>
</table>
</div>

 @foreach($unidades as $unidad)

<div class="datagrid ma ma1 page-break ">
<table>
    <tbody>
        <tr class="alt">
            <td colspan="3">NOMBRE DE LA UNIDAD: {{$unidad->nombre_de_la_unidad}} </td>
        </tr>
        <tr>
            <td colspan="3">DURACION DE LA UNIDAD EN PERIODOS ACADEMICOS: {{ $unidad->duracion_de_la_unidad_en_periodos_academicos }} </td>
        </tr>
        <tr>
            <td colspan="3" style="border-bottom:0" >OBJETIVOS DE LA UNIDAD</td>
        </tr>
        <tr>
            <td colspan="3">{{$unidad->objetivo_de_la_unidad}} </td>
        </tr>
        <tr>
            <td colspan="3" style="border-bottom:0" >CONTENIDO DE LA UNIDAD</td>
        </tr>
        <tr>
            <td colspan="3">{{$unidad->contenido_de_la_unidad}}</td>
        </tr>
        <tr>
            <td colspan="2" rowspan="6" width="40%">METODOLOGIA DE LA ENSEÑANZA</td>
            <td>TECNICAS PREDOMINANTES PROPUESAS PARA LA UNIDAD</td>
        </tr>
        <tr>
            <td>{{$unidad->tecnicas_predominantes_propuestas_para_la_unidad}}</td>
        </tr>
        <tr>
            <td>EVALUACION DE LA UNIDAD</td>
        </tr>
        <tr>
            <td>{{$unidad->evaluacion_de_la_unidad}}</td>
        </tr>
        <tr>
            <td>BIBLIGRAFIA ESPECIFICA DE LA UNIDAD</td>
        </tr>
        <tr>
            <td>{{$unidad->bibliografia_especifica_de_la_unidad}}</td>
        </tr>
    </tbody>
</table>
</div>
 @endforeach

<div class="datagrid ma ma1">
<table>
    <tbody>
        <tr class="alt">

            <td  > VI. EVALUACION </td>

        </tr>
        
        <tr>
            <td>{{$evaluacion->evaluacion }}</td>
        </tr>

    </tbody>
</table>
</div>

<div class="datagrid ma ma1">
<table>
    <tbody>
        <tr class="alt">

            <td colspan="15"> VII. CRONOGRAMA</td>
            
        </tr>
        <tr >

            <td colspan="5">UNIDAD</td>
            <td colspan="5">DURACION HORAS ACADEMICAS</td>
            <td colspan="5">DURACION EN SEMANAS</td>
            
        </tr>
        @foreach($unidades as $unidad)
        <tr>
            <td colspan="5">{{$unidad->nombre_de_la_unidad}} </td>
            <td colspan="5">{{ $unidad->duracion_de_la_unidad_en_periodos_academicos }}</td>
            <td colspan="5">{{ ($unidad->duracion_de_la_unidad_en_periodos_academicos)/6 }}</td>
        </tr>
        @endforeach
    </tbody>
</table>
</div>


<div class="datagrid ma ma1">
<table>
    <tbody>
        <tr class="alt">

            <td  > VIII. BIBLIOGRAFIA </td>
            
        </tr>
         @foreach($unidades as $unidad)
        <tr>
            <td>{{$unidad->bibliografia_especifica_de_la_unidad}}</td>
        </tr>
        @endforeach
    </tbody>
</table>
</div>



    </body>
</html>