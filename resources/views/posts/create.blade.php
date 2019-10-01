@extends('layouts.app')

@section('content')
<div class="container create-news">
        <h1>Napravi vest</h1>
        {!! Form::open(['action' => 'PostsController@store','method' => 'POST', 'enctype' => 'multipart/form-data']) !!}
        <div class="form-group">
            {{Form::label('title','Naslov vesti')}}
            {{Form::text('title','',['class' => 'form-control','placeholder' => 'Naslov'])}}
        </div>
        <div class="form-group">
            {{Form::label('body','Sadrzaj vesti')}}
            {{Form::textarea('body','',['id' => 'article-ckeditor','class' => 'form-control','placeholder' => 'Sadrzaj'])}}
        </div>
        <div class="form-group">
            {{Form::file('cover_image')}}
        </div>
        {{Form::submit('Postavi',['class' => 'btn btn-outline-success'])}}
        {!! Form::close() !!}
</div>
@endsection
