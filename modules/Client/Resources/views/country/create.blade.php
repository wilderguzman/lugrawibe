@extends('layouts.master')

@section('content')
    <section class="wrapper">
        @include('partials.message')
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-8 col-md-offset-2">
                    <div class="panel panel-default">
                        <div class="panel-heading">{{ trans('client::ui.country.new_country') }}</div>
                        <div class="panel-body">
                            @include('errors.form_error')

                            {!! Form::open(array('route' => 'client.country.store', 'class' => 'cmxform form-horizontal', 'id' => 'nameForm')) !!}

                            @include('client::country.form', ['button' => trans('client::ui.country.button_add')])

                            {!! Form::close() !!}
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection

@section('script')
    <script src="{{ asset('js/validation/jquery.validate.min.js') }}"></script>
    <script src="{{ asset('js/validation/validation-init.js') }}"></script>
@stop