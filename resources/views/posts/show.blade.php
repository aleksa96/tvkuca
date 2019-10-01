@extends('layouts.app')

@section('content')
<div class="container post-show">
        <h1 style="margin-top:70px">{{$post->title}}</h1>
                
        <div class="row">
                <div class="col-md-4">
                        <img style="width:300px; height:350px" src="/storage/cover_images/{{$post->cover_image}}" alt="">
                        <br>
                </div>
                <br><br>
                <div class="col-md-8">
                        <div>
                            {!!$post->body!!}
                        </div>
                        <br>
                </div>
                
        </div>
        <hr>
        <small>Objavljeno {{$post->created_at}} od strane {{$post->user['name']}}</small>
        <br><br>
        @if(!Auth::guest())
                    @if(Auth::user()->id == $post->user_id)
                    <a href="/posts" class="btn btn-outline-dark">Nazad</a>
                    {!!Form::open(['action' => ['PostsController@destroy', $post->id], 'method' => 'POST', 'class' => 'float-right'])!!}
                        {{Form::hidden('_method','DELETE')}}
                        {{Form::submit('Obrisi', ['class' => 'btn btn-outline-danger'])}}
                    {!!Form::close()!!}
                    <a href="/posts/{{$post->id}}/edit" class="btn btn-outline-primary float-right" style="margin-right: 8px">Izmeni</a>
                    @endif
        @endif 

        
        <div class="row">
                <div id="comment-form" class="col-md-8 col-md-offset-2" style="margin-top:50px;">
                        {{Form::open(['route'=>['comments.store',$post->id],'method'=>'POST']) }}
                        <div class="row">
                                <div class="col-md-6">
                                        {{Form::label('name',"Ime:") }}
                                        {{Form::text('name',null,['class'=>'form-control']) }}
                                </div>
                                <div class="col-md-6">
                                         {{Form::label('email','Email:') }}
                                         {{Form::text('email',null,['class'=>'form-control']) }}

                                </div>
                                <div class="col-md-12">
                                 {{Form::label('comment',"Komentar:") }}
                                 {{Form::textarea('comment',null,['class'=>'form-control','rows'=>'5']) }}

                                 {{Form::submit('Dodaj komentar',['class'=>'btn btn-success','style'=>'margin-top:15px;']) }}

                                </div>
                        </div>
                        {{Form::close()}}
                </div>  
        </div>

        <div class="row">
                <div class="col-md-8 col-md-offset-2">
                        @foreach ($post->comments as $comment)
                        <div class="comment">
                                <p style="margin-top:10px;"><strong>Ime: </strong>{{$comment->name}}</p>
                                <p><strong>Komentar:</strong><br/>{{$comment->comment}}</p>
                        </div>
                        <div class="delete-comment">
                                @if(!Auth::guest())
                                {!!Form::open(['action' => ['CommentsControler@destroy', $comment->id], 'method' => 'POST', 'class' => 'float-right'])!!}
                                {{Form::hidden('_method','DELETE')}}
                                {{Form::submit('Obrisi', ['class' => 'btn btn-outline-danger','style'=>'margin-top:-100px;'])}}
                            {!!Form::close()!!}
                                @endif
                        </div>
                        @endforeach
                </div>
 
        </div>

</div>
@endsection
