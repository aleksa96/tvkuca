@extends('layouts.app')

@section('content')
<div class="container edit-news">
        <h1>Izmeni vest</h1>
        {!! Form::open(['action' => ['PostsController@update', $post->id],'method' => 'POST', 'enctype' => 'multipart/form-data']) !!}
        <div class="form-group">
            {{Form::label('title','Naslov vesti')}}
            {{Form::text('title',$post->title,['class' => 'form-control','placeholder' => 'Naslov'])}}
        </div>
        <div class="form-group">
            {{Form::label('body','Sadrzaj vesti')}}
            {{Form::textarea('body',$post->body,['id' => 'article-ckeditor','class' => 'form-control','placeholder' => 'Sadrzaj'])}}
        </div>
        <div class="form-group">
                {{Form::file('cover_image')}}
        </div>
        {{Form::hidden('_method','PUT')}}
        {{Form::submit('Izmeni',['class' => 'btn btn-outline-success'])}}
        {!! Form::close() !!}
</div>
@endsection
