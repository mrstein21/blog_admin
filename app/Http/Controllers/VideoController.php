<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Video;
use App\Topic;
use App\VideoTags;
use Yajra\Datatables\Datatables;
use Illuminate\Support\Facades\DB;
use Spatie\Permission\Models\Role;
class VideoController extends Controller
{

    function __construct()
    {
         $this->middleware('permission:menu-list');
         $this->middleware('permission:menu-create', ['only' => ['view_add','add']]);
         $this->middleware('permission:menu-edit', ['only' => ['view_edit','edit']]);
         $this->middleware('permission:menu-delete', ['only' => ['delete']]);
    }

    public function ViewFormAddVideo(){
        $data_category=Topic::all();
        return view("video.add",compact("data_category"));
    }

    
    public function PostAddVideo(Request $request){
        $this->validate($request,[
              'title' => 'required',
              'description' => 'required',
              'youtube_key' => 'required',
              'tags' => 'required',
         ]);

         $video= new Video();
         $video->title=$request->title;
         $video->description=$request->description;
         $video->user_id=\Auth::user()->id;
         $video->youtube_key=$request->youtube_key;
         $video->save();

         foreach($request->tags as $tags){
             $video_tags=new VideoTags();
             $video_tags->video_id=$video->id;
             $video_tags->topic_id=$tags;
             $video_tags->save();
         }

         return redirect()->route("video.list")->with("success","Berhasil menambahkan artikel");
      }


      public function ViewFormEditVideo($id){
        $data=Video::find($id);
        $data_category=Topic::all();
        return view("video.edit",compact("data","data_category"));
    }

    
    public function PostEditVideo(Request $request,$id){
        $this->validate($request,[
            'title' => 'required',
            'description' => 'required',
            'youtube_key' => 'required',
            'tags' => 'required',
       ]);

            $video= Video::where("id",$id)->first();
            $video->title=$request->title;
            $video->description=$request->description;
            $video->user_id=\Auth::user()->id;
            $video->youtube_key=$request->youtube_key;
            $video->save();
          
         VideoTags::where("video_id",$id)->delete();
         foreach($request->tags as $tags){
            $video_tags=new VideoTags();
            $video_tags->video_id=$video->id;
            $video_tags->topic_id=$tags;
            $video_tags->save();
        }
  
         return redirect()->route("video.list")->with("success","Berhasil edit artikel");
      }

    public function PostDeleteVideo($id){
         Video::where("id",$id)->delete();
        return response()->json(["success"=>0,"message"=>"Berhasil hapus data !"]);
    }

    public function ViewListVideo(){
        return view("video.list");
    }

    public function VideoDataTable(){
        $video= Video::select(["id","title","youtube_key","created_at"]);
        return Datatables::of($video)
        ->addColumn('cover',function($user){
            return '<img src="https://img.youtube.com/vi/'.$user->youtube_key.'/default.jpg" height="50" width="50" />';
        })
        ->addColumn('action', function ($user) {
            $action="";
            if(\Auth::user()->can("menu-edit")){
                $action=$action.'<a href="'.route("video.view_edit",$user->id).'" class="btn btn-xs btn-primary"><i class="glyphicon glyphicon-edit"></i> Edit</a><br><br>';
            }
            if(\Auth::user()->can("menu-delete")){
               $action=$action.'<button onclick="showAlert(this.id)" id="'.$user->id.'"  class="btn btn-xs btn-danger"><i class="glyphicon glyphicon-remove"></i> Hapus</a><br>';
            }
            return $action;
        })
        ->escapeColumns([])
        ->make(true);
    }

   public function ViewImage($id){
        $data=\DB::table("menu")->where("id",$image)->first();
        $avatar_path = asset($data->image);
        if (file_exists($avatar_path)) {
              $file = file_get_contents($avatar_path);
              return response($file, 200)->header('Content-Type', 'image/jpeg');
        }
        return file_get_contents('assets/download.png');        
    }
    //
}
