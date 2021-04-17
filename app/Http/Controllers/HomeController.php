<?php

namespace App\Http\Controllers;
use App\Article;
use App\Video;
use App\Topic;

use Illuminate\Http\Request;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {  
        $total_article=Article::count();
        $total_video=Video::count();
        $total_topic=Topic::count();//\DB::table("menu")->where("company_id",\Auth::user()->company_id)->count();
        return view('home',compact("total_article","total_video","total_topic"));
    }
}
