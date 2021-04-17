<?php

namespace App\Http\Controllers\Api;
use App\Topic;
use Yajra\Datatables\Datatables;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class ApiTopicController extends Controller
{
    function LoadTopic(){
        $data = Topic::all();
        return response()->json([
            "success"=>true,
            "data"=>$data
        ]);       
     }
    //
}
