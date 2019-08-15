@extends('layouts.modal')

@section('modalID'){{ 'newPost' }}@overwrite

@section('modalHeader')
<button type="button" class="close" data-dismiss="modal">&times;</button>
<h3 class="modal-title text-center">發表文章</h3>
@overwrite

@section('modalBody')
<form class="form-horizontal" method="POST" action="/post"  data-ajax='false'>
    @csrf
        <div class="form-group">
            <div class="col-md-8 col-md-offset-2">
                <span class="label label-warning">當前身分：<b>{{ $user }}</b></span>
                <input class="form-control input-md" name='newTitle' id="newTitle" type="text" placeholder="Title is ..." required>
            </div>
        </div>

        <div class="form-group">
            <div class="col-md-8 col-md-offset-2">
                <textarea class="form-control input-md" name="newContent" id="newContent" cols="30" rows="10" placeholder="Write something..." required></textarea>
            </div>
        </div>   
    </div>

    <div class="form-group">
        <div class="col-md-offset-2">
            <button type="submit" class="btn btn-success">Post</button>
            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
    </div>
</form>
@overwrite

@section('modalFooter')

@overwrite