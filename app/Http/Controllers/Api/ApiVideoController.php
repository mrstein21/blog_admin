<?php

namespace App\Http\Controllers\Api;
use Illuminate\Http\Request;
use App\Video;
use App\VideoTags;
use Yajra\Datatables\Datatables;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
class ApiVideoController extends Controller
{

    
    public function LoadVideo(){
        $data=Video::select("id","title","youtube_key","description","created_at","user_id")->with("author")->paginate(10); 
        foreach($data as $row){
           $row->date=date('d/M/Y',strtotime($row->created_at));  
         }   
            return response()->json([
            "success"=>true,
            "data"=>$data
        ]);
    }

    function SearchVideoByTags($tags){
        $data=VideoTags::with("video.author")->where("topic_id",$tags)->paginate(10);
        return response()->json([
            "success"=>true,
            "data"=>$data
        ]);
     }

     function RelatedVideo(Request $request){
        $data=VideoTags::with("video.author")->whereIn("topic_id",$request->topic_id)->distinct()->take(10)->get();
        foreach($data as $row){
            $row->video->date=date('d/M/Y',strtotime($row->video->created_at));  
        }
        return response()->json([
            "success"=>true,
            "data"=>$data
        ]);
     }


    public function DetailVideo($id){
      $data=Video::with(["author","tags.topics"])->where("id",$id)->first();
      $data->date=date('d/M/Y',strtotime($data->created_at));  

      return response()->json([
          "status"=>true,
          "data"=>$data
      ]);
    }

    public function SearchVideo($keyword){
        $data=Video::select("id","title","description","youtube_key","created_at","user_id")->with("author")
        ->where('title','LIKE',"%".$keyword."%")
        ->paginate(10);
    
        return response()->json([
            "success"=>1,
            "data"=>$data
        ]);
    }    //
}
