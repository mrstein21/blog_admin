<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Article;
use App\Topic;
use App\ArticleTags;
use Yajra\Datatables\Datatables;
use Illuminate\Support\Facades\DB;
use Spatie\Permission\Models\Role;
class ArticleController extends Controller
{

    function __construct()
    {
         $this->middleware('permission:menu-list');
         $this->middleware('permission:menu-create', ['only' => ['view_add','add']]);
         $this->middleware('permission:menu-edit', ['only' => ['view_edit','edit']]);
         $this->middleware('permission:menu-delete', ['only' => ['delete']]);
    }

    public function ViewFormAddArticle(){
        $data_category=Topic::all();
        return view("article.add",compact("data_category"));
    }

    
    public function PostAddArticle(Request $request){
        $this->validate($request,[
              'title' => 'required',
              'short_description' => 'required',
              'content' => 'required',
              'tags' => 'required',
              'cover' => 'required'
         ]);

         $article= new Article();
         $article->title=$request->title;
         $article->short_description=$request->short_description;
         $article->content=$request->content;
         $article->user_id=\Auth::user()->id;
         $article->image=$request->cover;
         $article->save();

         foreach($request->tags as $tags){
             $article_tags=new ArticleTags();
             $article_tags->article_id=$article->id;
             $article_tags->topic_id=$tags;
             $article_tags->save();
         }

         return redirect()->route("article.list")->with("success","Berhasil menambahkan artikel");
      }


      public function ViewFormEditArticle($id){
        $data=Article::find($id);
        $data_category=Topic::all();
        return view("article.edit",compact("data","data_category"));
    }

    
    public function PostEditArticle(Request $request,$id){
        $this->validate($request,[
                'title' => 'required',
                'short_description' => 'required',
                'content' => 'required',
                'tags' => 'required',
                'cover' => 'required'
       ]);

       $article= Article::where("id",$id)->first();
         $article->title=$request->title;
         $article->short_description=$request->short_description;
         $article->content=$request->content;
         $article->user_id=\Auth::user()->id;
         $article->image=$request->cover;
         $article->save();
          
         ArticleTags::where("article_id",$id)->delete();
         foreach($request->tags as $tags){
            $article_tags=new ArticleTags();
            $article_tags->article_id=$article->id;
            $article_tags->topic_id=$tags;
            $article_tags->save();
        }
  
         return redirect()->route("article.list")->with("success","Berhasil edit artikel");
      }

    public function PostDeleteArticle($id){
         Article::where("id",$id)->delete();
        return response()->json(["success"=>0,"message"=>"Berhasil hapus data !"]);
    }

    public function ViewListArticle(){
        return view("article.list");
    }

    public function ArticleDataTable(){
        $article= Article::select(["id","title","image","short_description","created_at"]);
        return Datatables::of($article)
        ->addColumn('cover',function($user){
            return '<img src="'.asset($user->image).'" height="50" width="50" />';

        })
        ->addColumn('action', function ($user) {
            $action="";
            if(\Auth::user()->can("menu-edit")){
                $action=$action.'<a href="'.route("article.view_edit",$user->id).'" class="btn btn-xs btn-primary"><i class="glyphicon glyphicon-edit"></i> Edit</a><br><br>';
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
