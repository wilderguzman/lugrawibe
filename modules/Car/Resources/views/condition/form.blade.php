<div class="form-group">
    <label  class="col-lg-2 col-sm-2 control-label">{{ trans('car::ui.condition.name') }}</label>
    <div class="col-lg-8">
        {!! Form::text('name', null, ['class' => 'form-control']) !!}
    </div>
</div>
<div class="form-group">
    <div class="col-lg-offset-2 col-lg-8">

        {!! Form::submit($button, ['class' => 'btn btn-primary']) !!}

    </div>
</div>