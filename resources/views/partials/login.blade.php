@extends('layouts.modal')

@section('modalID'){{ 'login' }}@overwrite

@section('modalHeader')
<button type="button" class="close" data-dismiss="modal">&times;</button>
<h3 class="modal-title text-center">登入</h3>
@overwrite

@section('modalBody')
<form id="formLogin" class="form-horizontal" method="POST" action="/login">
    @csrf
    <div class="form-group">
        <div class="input-group col-md-8 col-md-offset-2">
            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
            <input id="userName" name="userName" type="text" placeholder="請輸入帳號"
                class="form-control input-md">
        </div>
    </div>

    <div class="form-group">
        <div class="input-group col-md-8 col-md-offset-2">
            <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
            <input id="userPwd" name="userPwd" type="password" placeholder="請輸入密碼"
                class="form-control input-md">
        </div>
    </div>
    
    <div class="form-group">
        <div id="loginSuccess" class="alert alert-success col-md-8 col-md-offset-2">
            <strong>登入成功</strong>
        </div>
        <div id="loginFail" class="alert alert-danger col-md-8 col-md-offset-2">
            <strong>登入失敗，請確認帳號或密碼</strong>
        </div>
    </div>

    <div class="form-group">
        <div class="col-md-offset-2">
            <button type="submit" class="btn btn-success">Login</button>
            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
    </div>
</form>
@overwrite

@section('modalFooter')

@overwrite