@extends('backend/layout/layout')
@section('content')
<script type="text/javascript">
    $(document).ready(function () {

        $('.type').change(function () {
                var selected = $('input[class="type"]:checked').val();
                if (selected == "custom") {
                    $('.modules').css('display', 'none');
                    $('.url').css('display', 'block');
                }
                else {
                    $('.modules').css('display', 'block');
                    $('.url').css('display', 'none');
                }
            }
        );

        $(".type").trigger("change");
    });
</script>
<!-- Content Header (Page header) -->
<section class="content-header">
    <h1> 菜单 <small> | 添加菜单</small> </h1>
    <ol class="breadcrumb">
        <li><a href="{!! url(getLang(). '/admin/menu') !!}">Menu</a></li>
        <li class="active">Add Menu Item</li>
    </ol>
</section>
<br>
<br>
<div class="container">

    {!! Form::open(array('action' => '\Fully\Http\Controllers\Admin\MenuController@store')) !!}
    <!-- Title -->
    <div class="control-group {!! $errors->has('title') ? 'has-error' : '' !!}">
        <label class="control-label" for="title">标题</label>

        <div class="controls">
            {!! Form::text('title', null, array('class'=>'form-control', 'id' => 'title', 'placeholder'=>'Title', 'value'=>Input::old('title'))) !!}
            @if ($errors->first('title'))
            <span class="help-block">{!! $errors->first('title') !!}</span>
            @endif
        </div>
        <br>
    </div>
	
	
	<!-- Parent_Id -->
    <label class="control-label" for="title">父类</label>

    <div class="control-group {!! $errors->has('arrays') ? 'has-error' : '' !!} ">
      
        <div class="controls">
            {!! Form::select('parent_id',$arrays,null, array('class'=>'form-control',)) !!}
            @if ($errors->first('arrays'))
            <span class="help-block">{!! $errors->first('arrays') !!}</span>
            @endif
        </div>
        <br>
    </div>

    <!-- Type -->
    <label class="control-label" for="title">类型</label>

    <div class="controls">
        <div class="radio">
            <label>
                {!! Form::radio('type', 'module', true, array('id'=>'module', 'class'=>'type')) !!}
                <span>Module</span>
            </label>
        </div>
		
        <div class="radio">
            <label>
                {!! Form::radio('type', 'custom', false, array('id'=>'custom', 'class'=>'type')) !!}
                <span>Custom</span>
            </label>
        </div>
        <br>
    </div>

    <!-- Modules -->
    <div class="control-group {!! $errors->has('options') ? 'has-error' : '' !!} modules">
        <label class="control-label" for="title">Options</label>

        <div class="controls">
            {!! Form::select('option', $options, null, array('class'=>'form-control', 'id' => 'options', 'value'=>Input::old('options')))  !!}
            @if ($errors->first('options'))
            <span class="help-block">{!! $errors->first('options') !!}</span>
            @endif
        </div>
        <br>
    </div>

    <!-- URL -->
    <div style="display:none" class="control-group {!! $errors->has('url') ? 'has-error' : '' !!} url">
        <label class="control-label" for="first-name">URL</label>

        <div class="controls">
            {!! Form::text('url',null, array('class'=>'form-control', 'id' => 'url', 'placeholder'=>'Url', 'value'=>Input::old('url'))) !!}
            @if ($errors->first('url'))
            <span class="help-block">{!! $errors->first('url') !!}</span>
            @endif
        </div>
    </div>
    <br>
    <!-- Form actions -->
    {!! Form::submit('Save Changes', array('class' => 'btn btn-success')) !!}

    {!! Form::close() !!}

</div>
@stop
