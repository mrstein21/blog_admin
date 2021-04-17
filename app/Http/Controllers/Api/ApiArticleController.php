<?php

namespace App\Http\Controllers\Api;
use Illuminate\Http\Request;
use App\Article;
use App\ArticleTags;
use Yajra\Datatables\Datatables;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
class ApiArticleController extends Controller
{

    
    public function LoadArticle(){
        $data=Article::select("id","title","short_description","image","created_at","user_id")->with("author")->paginate(10);    
            return response()->json([
            "success"=>true,
            "data"=>$data
        ]);
    }

    function SearchArticleByTags($tags){
        $data=ArticleTags::with("article.author")->where("topic_id",$tags)->paginate(10);
        return response()->json([
            "success"=>true,
            "data"=>$data
        ]);
     }

     function RelatedArticle(Request $request){
        $data=ArticleTags::with("article.author")->where("article_tags.article_id",
        "<>",$request->article_id)->whereIn("topic_id",$request->topic_id)
        ->groupBy("article_tags.article_id")->take(10)->get();
        foreach($data as $row){
          $row->article->date=date('d/M/Y',strtotime($row->article->created_at));  
        }

        return response()->json([
            "success"=>true,
            "data"=>$data
        ]);
     }



    public function DetailArticle($id){
      $data=Article::with(["author","tags.topics"])->where("id",$id)->first();
      $data->date=date('d/M/Y',strtotime($data->created_at));  
      return response()->json([
          "status"=>true,
          "data"=>$data
      ]);
    }

    public function SearchArticle($keyword){
        $data=Article::select("id","title","short_description","image","created_at","user_id")->with("author")
        ->where('title','LIKE',"%".$keyword."%")
        ->paginate(10);
    
        return response()->json([
            "success"=>1,
            "data"=>$data
        ]);
    }    //
}
