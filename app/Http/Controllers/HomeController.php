<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\User;
use App\Post;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        // $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        // return view('home');
    }

    public function login(Request $request)
    {
        $validate = User::
            where('name', '=', $request->userName)
            ->where('password', '=', $request->userPwd)
            ->get();
        
            if(count($validate)){
                session([
                    'userName' => $validate[0]->name,
                    'user' => $validate[0]->id
                ]);
                return response('登入成功', 200);
            }
            
            return response('登入失敗', 401);
    }

    public function logout(Request $request){
        $request->session()->flush();
        return redirect('/');        
    }

}