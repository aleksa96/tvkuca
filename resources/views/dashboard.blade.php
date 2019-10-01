@extends('layouts.app')

@section('content')
<div class="form-dashboard">
        <div class="container">
                <div class="row justify-content-center">
                    <div class="col-md-8">
                        <div class="card">
                            <div class="card-header">Dashboard</div>
            
                            <div class="card-body">
                                @if (session('status'))
                                    <div class="alert alert-success" role="alert">
                                        {{ session('status') }}
                                    </div>
                                @endif
                                <a href="/posts/create" class="btn btn-outline-primary" style="margin-bottom:20px">Napravi vest</a>
                                <br>
                                <h3>Vase vesti</h3>
                                @if(count($posts) > 0)
                                <table class="table table-striped">
                                        <tr>
                                            <th>Naslov vesti</th>
                                            <th></th>
                                            <th></th>
                                        </tr>
                                        @foreach($posts as $post)
                                            <tr>
                                                <td>{{$post->title}}</td>
                                                <td><a href="/posts/{{$post->id}}/edit" class="btn btn-outline-primary">Izmeni</a></td>
                                                <td>
                                                    {!!Form::open(['action' => ['PostsController@destroy', $post->id], 'method' => 'POST', 'class' => 'float-right'])!!}
                                                        {{Form::hidden('_method','DELETE')}}
                                                        {{Form::submit('Obrisi', ['class' => 'btn btn-outline-danger'])}}
                                                    {!!Form::close()!!}
                                                </td>
                                            </tr>
                                        @endforeach
                                    </table>
                                @else
                                    <p>Trenutno nemate nijednu vest.</p>
                                @endif
                            </div>
                        </div>
                    </div>
                </div>
            </div>
</div>
@endsection
