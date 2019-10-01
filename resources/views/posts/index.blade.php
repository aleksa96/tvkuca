@extends('layouts.app')
@section('content')
<h1 id="h1vesti">Najnovije vesti</h1>
<div class="news-area container">
    @if(count($posts) > 0)
    @foreach($posts as $post)
    <div class="latest-news-area">
        <div>
            <div class="section-title">
                <h2><a href="/posts/{{$post->id}}">{{$post->title}}</a></h2>
                <small>Objavljeno {{$post->created_at}} od strane {{$post->user['name']}}</small>
            </div>
            <div class="news-active">
                <div class="latest-news-wrap">
                    <div class="news-img">
                        <img src="/storage/cover_images/{{$post->cover_image}}" class="img-responsive">
                    </div>
                    <div class="news-content wrap">

                     {!! substr($post->body,0,300) !!} ...
                        <br>
                        <span><a href="/posts/{{$post->id}}">Procitaj vise</a></span>
                    </div>
                </div>
            </div>
        </div>

    </div>
    @endforeach
    {{$posts->links()}}
    @else
    <p>Trenutno nema vesti.</p>
    @endif
</div>
@endsection
