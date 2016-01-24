@extends('layouts.master')

@section('style')
    <link href="{{ asset('js/advanced-datatable/css/demo_page.css') }}" rel="stylesheet" />
    <link href="{{ asset('js/advanced-datatable/css/demo_table.css') }}" rel="stylesheet" />
    <link rel="stylesheet" href="{{ asset('js/data-tables/DT_bootstrap.css') }}" />
    @stop

@section('content')

    <!--body wrapper start-->
    <div class="wrapper">
        @include('partials.message')
        <div class="row">
            <div class="col-sm-12">
                <section class="panel">
                    <header class="panel-heading">
                        {{ trans('car::ui.color.names') }}
            <span class="tools pull-right">
                <a href="javascript:;" class="fa fa-chevron-down"></a>
                <a href="javascript:;" class="fa fa-times"></a>
             </span>
                    </header>
                    <div class="panel-body">
                        <div class="adv-table">
                            @if(Auth::user()->can('create-colors'))
                            <a href="{{ url('car/color/create') }}"><button class="btn btn-primary" type="button"><i class="fa fa-plus-circle"></i> {{ trans("car::ui.color.button_add") }}</button></a>
                            @endif
                            <table  class="display table table-bordered table-striped" id="dynamic-table">
                                <thead>
                                <tr>
                                    <th>{{ trans('car::ui.color.name_label') }}</th>
                                    @if(Auth::user()->can(['update-colors', 'delete-colors']))
                                    <th>{{ trans('car::ui.color.operation_label') }}</th>
                                    @endif
                                </tr>
                                </thead>
                                <tbody>
                                @foreach($colors as $color)
                                    <tr class="gradeX">
                                        <td>{{ $color->name}}</td>
                                        @if(Auth::user()->can(['update-colors', 'delete-colors']))
                                        <td>
                                            <p>
                                                @if(Auth::user()->can('update-colors'))
                                            <a href="{{ url('car/color/' . $color->id . '/edit') }}">
                                                <button class="btn btn-info " type="button"><i class="fa fa-refresh"></i> {{ trans('car::ui.color.button_update') }}</button>
                                            </a>
                                                @endif

                                                    @if(Auth::user()->can('delete-colors'))
                                            {!! Form::open(['url' => 'car/color/'. $color->id, 'method' => 'delete']) !!}
                                            <button class="btn btn-danger " type="submit"><i class="fa fa-times-circle"></i> {{ trans('car::ui.color.button_delete') }}</button>
                                            {!! Form::close() !!}
                                                    @endif
                                            </p>
                                        </td>
                                        @endif
                                    </tr>
                                @endforeach
                                </tbody>
                                <tfoot>
                                <tr>
                                    <th>{{ trans('car::ui.color.name_label') }}</th>
                                    @if(Auth::user()->can(['update-colors', 'delete-colors']))
                                        <th>{{ trans('car::ui.color.operation_label') }}</th>
                                    @endif
                                </tr>
                                </tfoot>
                            </table>
                        </div>
                    </div>
                </section>
            </div>
        </div>
    </div>
@stop

@section('script')
            <!--dynamic table-->
    <script type="text/javascript" language="javascript" src="{{ asset('js/advanced-datatable/js/jquery.dataTables.js')}}"></script>
    <script type="text/javascript" src="{{ asset('js/data-tables/DT_bootstrap.js') }}"></script>
    <!--dynamic table initialization -->
    <script src="{{ asset('js/dynamic_table_init.js') }}"></script>
@stop