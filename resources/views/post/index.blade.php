@extends('layouts.master');

@section('title')
   HomePage 
@endsection

@section('content')

@foreach($posts as $post)
<div class="row">
    <div class="col-md-8 col-md-offset-2">

        <div id="post_{{ $post->id }}" class="card panel panel-success" onclick="showPost(this)">
            
            <div class="panel-heading">
                <b>{{ $post->title }}</b>
                <span class="pull-right">{{ $post->updated_at }}</span>
            </div>
            
            <div class="panel-body" >{{ $post->content }}</div>
            
            <div class="panel-footer">
                <span> written by {{ $post->name }} </span>
                <div class="btn-group pull-right">
                    <button class="btn btn-default" onclick="editPost({{ $post->id }})">
                        Edit
                    </button>
                    <button class="btn btn-default" onclick="deletePost({{ $post->id }})">
                        Delete
                    </button>
                    <form id='delete_{{ $post->id }}' hidden>
                        @csrf
                        hello
                    </form>
                </div>
            </div>
            
        </div>
    </div>
</div> 
@endforeach

@include('layouts.editpost');
@endsection