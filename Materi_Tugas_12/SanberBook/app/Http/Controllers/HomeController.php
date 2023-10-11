<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use routes\web;

class HomeController extends Controller
{
    public function page() {
        return view('page');
    }

    public function form(){
        return view('form');
    }

    public function index(){
        return view('layout.index');
    }

    public function sent(Request $request){
        $nama = $request['Nama'];
        $marga = $request['marga'];

        return view('welcome', ['First Name'=>$nama, 'Last Name'=>$marga]);
    }
}
